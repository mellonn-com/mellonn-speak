import 'dart:convert';
import 'dart:io';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/services.dart';
import 'package:mellonnSpeak/providers/analyticsProvider.dart';
import 'package:path_provider/path_provider.dart';

class AuthAppProvider with ChangeNotifier {
  //Creating the necessary variables
  String _email = "Couldn't get your email";
  String _firstName = "First name";
  String _lastName = "Last name";
  String _userGroup = "none";

  //Making the variables ready for providing
  String get email => _email;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get userGroup => _userGroup;

  /*
  * Creating the function that gets the user attributes
  */
  Future<void> getUserAttributes() async {
    try {
      var res = await Amplify.Auth
          .fetchUserAttributes(); //Fetching them and putting them in a list (res)

      /*
      * Checking each element in the list
      * First checking what they key is
      * Then assigning the value to the corresponding variable
      */
      res.forEach((element) async {
        if (element.userAttributeKey == CognitoUserAttributeKey.email) {
          _email = element.value;
        } else if (element.userAttributeKey == CognitoUserAttributeKey.name) {
          _firstName = element.value;
        } else if (element.userAttributeKey ==
            CognitoUserAttributeKey.familyName) {
          _lastName = element.value;
        } else if (element.userAttributeKey ==
            CognitoUserAttributeKey.custom('group')) {
          if (element.value != 'dev') {
            bool isUserBenefit = await checkBenefit(email);
            print('Benefit user: $isUserBenefit');
            if (element.value == 'user' && !isUserBenefit ||
                element.value == 'benefit' && isUserBenefit) {
              _userGroup = element.value;
            } else {
              await changeBenefit(isUserBenefit);
              _userGroup = isUserBenefit ? 'benefit' : 'user';
            }
          } else {
            _userGroup = element.value;
          }
          //print('User group: $_userGroup');
        } else {
          //print(
          //    'fail: ${element.value}, attribute: ${element.userAttributeKey}');
        }
      });
    } on AuthException catch (e) {
      recordEventError('getUserAttributes', e.message);
      print(e.message); //Just in case...
    }
  }

  //Notifying that something has changed
  notifyListeners();
}

///
///Check if the user with given email is a benefit user
///
Future<bool> checkBenefit(String email) async {
  final tempDir = await getTemporaryDirectory();
  final filePath = tempDir.path + '/benefitUsers.json';
  final file = File(filePath);
  final key = 'data/benefitUsers.json';
  final S3DownloadFileOptions options = S3DownloadFileOptions(
    accessLevel: StorageAccessLevel.guest,
  );
  bool returnElement = false;

  if (await file.exists()) {
    await file.delete();
  }

  try {
    await Amplify.Storage.downloadFile(
      key: key,
      local: file,
      options: options,
    );
    String loadedJson = await file.readAsString();
    BenefitUsers benefitUsers = BenefitUsers.fromJson(json.decode(loadedJson));

    for (String benefitEmail in benefitUsers.emails) {
      if (benefitEmail == email) {
        returnElement = true;
        break;
      }
    }
  } on StorageException catch (e) {
    recordEventError('isBenefit', e.message);
    print('ERROR: ${e.message}');
    return false;
  }
  return returnElement;
}

///
///Adds a user to the benefit list
///
Future<void> addBenefit(String email) async {
  final tempDir = await getTemporaryDirectory();
  final filePath = tempDir.path + '/benefitUsers.json';
  final file = File(filePath);
  final key = 'data/benefitUsers.json';
  final S3DownloadFileOptions options = S3DownloadFileOptions(
    accessLevel: StorageAccessLevel.guest,
  );

  if (await file.exists()) {
    await file.delete();
  }

  try {
    await Amplify.Storage.downloadFile(
      key: key,
      local: file,
      options: options,
    );
    String loadedJson = await file.readAsString();
    BenefitUsers benefitUsers = BenefitUsers.fromJson(json.decode(loadedJson));

    List<String> newEmails = benefitUsers.emails;
    newEmails.add(email);
    BenefitUsers newBenefitUsers = BenefitUsers(emails: newEmails);
    await file.writeAsString(json.encode(newBenefitUsers.toJson()));

    try {
      final S3UploadFileOptions uploadOptions = S3UploadFileOptions(
        accessLevel: StorageAccessLevel.guest,
      );
      await Amplify.Storage.uploadFile(
        local: file,
        key: key,
        options: uploadOptions,
      );
    } on StorageException catch (e) {
      recordEventError('addBenefit-upload', e.message);
      print('ERROR: ${e.message}');
    }
  } on StorageException catch (e) {
    recordEventError('addBenefit-download', e.message);
    print('ERROR: ${e.message}');
  }
}

///
///Changes the current user to be either benefit or not
///
Future<void> changeBenefit(bool isBenefit) async {
  try {
    var attributes = [
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.custom("group"),
        value: isBenefit ? 'benefit' : 'user',
      ),
    ];

    await Amplify.Auth.updateUserAttributes(attributes: attributes);
  } on AuthException catch (e) {
    recordEventError('changeBenefit', e.message);
    print(e.message);
  }
}

class BenefitUsers {
  List<String> emails;

  BenefitUsers({
    required this.emails,
  });

  factory BenefitUsers.fromJson(Map<String, dynamic> json) => BenefitUsers(
        emails: json["emails"].cast<String>(),
      );

  Map<String, dynamic> toJson() => {
        "emails": emails,
      };
}
