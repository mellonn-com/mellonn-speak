/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Recording type in your schema. */
@immutable
class Recording extends Model {
  static const classType = const _RecordingModelType();
  final String id;
  final String? _name;
  final TemporalDate? _date;
  final String? _description;
  final String? _fileKey;
  final String? _fileName;
  final String? _fileUrl;
  final int? _speakerCount;
  final String? _languageCode;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  TemporalDate? get date {
    return _date;
  }
  
  String? get description {
    return _description;
  }
  
  String? get fileKey {
    return _fileKey;
  }
  
  String? get fileName {
    return _fileName;
  }
  
  String? get fileUrl {
    return _fileUrl;
  }
  
  int get speakerCount {
    try {
      return _speakerCount!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get languageCode {
    return _languageCode;
  }
  
  const Recording._internal({required this.id, required name, date, description, fileKey, fileName, fileUrl, required speakerCount, languageCode}): _name = name, _date = date, _description = description, _fileKey = fileKey, _fileName = fileName, _fileUrl = fileUrl, _speakerCount = speakerCount, _languageCode = languageCode;
  
  factory Recording({String? id, required String name, TemporalDate? date, String? description, String? fileKey, String? fileName, String? fileUrl, required int speakerCount, String? languageCode}) {
    return Recording._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      date: date,
      description: description,
      fileKey: fileKey,
      fileName: fileName,
      fileUrl: fileUrl,
      speakerCount: speakerCount,
      languageCode: languageCode);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Recording &&
      id == other.id &&
      _name == other._name &&
      _date == other._date &&
      _description == other._description &&
      _fileKey == other._fileKey &&
      _fileName == other._fileName &&
      _fileUrl == other._fileUrl &&
      _speakerCount == other._speakerCount &&
      _languageCode == other._languageCode;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Recording {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("fileKey=" + "$_fileKey" + ", ");
    buffer.write("fileName=" + "$_fileName" + ", ");
    buffer.write("fileUrl=" + "$_fileUrl" + ", ");
    buffer.write("speakerCount=" + (_speakerCount != null ? _speakerCount!.toString() : "null") + ", ");
    buffer.write("languageCode=" + "$_languageCode");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Recording copyWith({String? id, String? name, TemporalDate? date, String? description, String? fileKey, String? fileName, String? fileUrl, int? speakerCount, String? languageCode}) {
    return Recording(
      id: id ?? this.id,
      name: name ?? this.name,
      date: date ?? this.date,
      description: description ?? this.description,
      fileKey: fileKey ?? this.fileKey,
      fileName: fileName ?? this.fileName,
      fileUrl: fileUrl ?? this.fileUrl,
      speakerCount: speakerCount ?? this.speakerCount,
      languageCode: languageCode ?? this.languageCode);
  }
  
  Recording.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _date = json['date'] != null ? TemporalDate.fromString(json['date']) : null,
      _description = json['description'],
      _fileKey = json['fileKey'],
      _fileName = json['fileName'],
      _fileUrl = json['fileUrl'],
      _speakerCount = (json['speakerCount'] as num?)?.toInt(),
      _languageCode = json['languageCode'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'date': _date?.format(), 'description': _description, 'fileKey': _fileKey, 'fileName': _fileName, 'fileUrl': _fileUrl, 'speakerCount': _speakerCount, 'languageCode': _languageCode
  };

  static final QueryField ID = QueryField(fieldName: "recording.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField DATE = QueryField(fieldName: "date");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField FILEKEY = QueryField(fieldName: "fileKey");
  static final QueryField FILENAME = QueryField(fieldName: "fileName");
  static final QueryField FILEURL = QueryField(fieldName: "fileUrl");
  static final QueryField SPEAKERCOUNT = QueryField(fieldName: "speakerCount");
  static final QueryField LANGUAGECODE = QueryField(fieldName: "languageCode");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Recording";
    modelSchemaDefinition.pluralName = "Recordings";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recording.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recording.DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recording.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recording.FILEKEY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recording.FILENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recording.FILEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recording.SPEAKERCOUNT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Recording.LANGUAGECODE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _RecordingModelType extends ModelType<Recording> {
  const _RecordingModelType();
  
  @override
  Recording fromJson(Map<String, dynamic> jsonData) {
    return Recording.fromJson(jsonData);
  }
}