import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mellonnSpeak/pages/home/profile/settings/settingsPage.dart';
import 'package:mellonnSpeak/pages/login/loginPage.dart';
import 'package:mellonnSpeak/providers/amplifyAuthProvider.dart';
import 'package:mellonnSpeak/providers/amplifyDataStoreProvider.dart';
import 'package:mellonnSpeak/utilities/standardWidgets.dart';
import 'package:provider/src/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePageMobile extends StatefulWidget {
  const ProfilePageMobile({Key? key}) : super(key: key);

  @override
  State<ProfilePageMobile> createState() => _ProfilePageMobileState();
}

class _ProfilePageMobileState extends State<ProfilePageMobile> {
  ///
  ///The function for signing out, if the name didn't tell you...
  ///
  void signOut() async {
    // ignore: unnecessary_statements
    context.read<DataStoreAppProvider>().clearRecordings(true);
    await Amplify.Auth.signOut();
    await Amplify.DataStore.clear();
    //Sends the user back to the login screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StandardBox(
          margin: EdgeInsets.only(top: 5),
          color: Theme.of(context).colorScheme.primary,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height < 800
              ? MediaQuery.of(context).size.height * 0.27
              : MediaQuery.of(context).size.height * 0.22,
          child: Column(
            children: [
              ///Profile pic circle
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.of(context).colorScheme.secondaryVariant,
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hi ${context.watch<AuthAppProvider>().firstName} ${context.watch<AuthAppProvider>().lastName}!',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              StandardBox(
                margin: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidEnvelope,
                      size: 20,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      context.watch<AuthAppProvider>().email,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ),
                  );
                },
                child: StandardBox(
                  margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.cog,
                        size: 20,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Hero(
                        tag: 'pageTitle',
                        child: Text(
                          'Settings',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => signOut(),
                child: StandardBox(
                  margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.signOutAlt,
                        size: 20,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Sign Out',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ),

              ///
              ///HELP!
              ///
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => launch('https://www.mellonn.com/speak-help'),
                child: StandardBox(
                  margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.question,
                        size: 20,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Help',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  await context.read<DataStoreAppProvider>().updateUserData(
                        0,
                        context.read<AuthAppProvider>().email,
                      );
                },
                child: StandardBox(
                  margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Text('Update data...'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
