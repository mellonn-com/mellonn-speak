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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Recording type in your schema. */
class Recording extends amplify_core.Model {
  static const classType = const _RecordingModelType();
  final String id;
  final String? _name;
  final amplify_core.TemporalDateTime? _date;
  final String? _description;
  final String? _fileKey;
  final String? _fileName;
  final String? _fileUrl;
  final int? _speakerCount;
  final String? _languageCode;
  final List<Version>? _versions;
  final List<String>? _interviewers;
  final List<String>? _labels;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

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
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get date {
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
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get languageCode {
    return _languageCode;
  }
  
  List<Version>? get versions {
    return _versions;
  }
  
  List<String>? get interviewers {
    return _interviewers;
  }
  
  List<String>? get labels {
    return _labels;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Recording._internal({required this.id, required name, date, description, fileKey, fileName, fileUrl, required speakerCount, languageCode, versions, interviewers, labels, createdAt, updatedAt}): _name = name, _date = date, _description = description, _fileKey = fileKey, _fileName = fileName, _fileUrl = fileUrl, _speakerCount = speakerCount, _languageCode = languageCode, _versions = versions, _interviewers = interviewers, _labels = labels, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Recording({String? id, required String name, amplify_core.TemporalDateTime? date, String? description, String? fileKey, String? fileName, String? fileUrl, required int speakerCount, String? languageCode, List<Version>? versions, List<String>? interviewers, List<String>? labels}) {
    return Recording._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      date: date,
      description: description,
      fileKey: fileKey,
      fileName: fileName,
      fileUrl: fileUrl,
      speakerCount: speakerCount,
      languageCode: languageCode,
      versions: versions != null ? List<Version>.unmodifiable(versions) : versions,
      interviewers: interviewers != null ? List<String>.unmodifiable(interviewers) : interviewers,
      labels: labels != null ? List<String>.unmodifiable(labels) : labels);
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
      _languageCode == other._languageCode &&
      DeepCollectionEquality().equals(_versions, other._versions) &&
      DeepCollectionEquality().equals(_interviewers, other._interviewers) &&
      DeepCollectionEquality().equals(_labels, other._labels);
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
    buffer.write("languageCode=" + "$_languageCode" + ", ");
    buffer.write("interviewers=" + (_interviewers != null ? _interviewers!.toString() : "null") + ", ");
    buffer.write("labels=" + (_labels != null ? _labels!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Recording copyWith({String? id, String? name, amplify_core.TemporalDateTime? date, String? description, String? fileKey, String? fileName, String? fileUrl, int? speakerCount, String? languageCode, List<Version>? versions, List<String>? interviewers, List<String>? labels}) {
    return Recording._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      date: date ?? this.date,
      description: description ?? this.description,
      fileKey: fileKey ?? this.fileKey,
      fileName: fileName ?? this.fileName,
      fileUrl: fileUrl ?? this.fileUrl,
      speakerCount: speakerCount ?? this.speakerCount,
      languageCode: languageCode ?? this.languageCode,
      versions: versions ?? this.versions,
      interviewers: interviewers ?? this.interviewers,
      labels: labels ?? this.labels);
  }
  
  Recording copyWithModelFieldValues({
    ModelFieldValue<String>? id,
    ModelFieldValue<String>? name,
    ModelFieldValue<amplify_core.TemporalDateTime?>? date,
    ModelFieldValue<String?>? description,
    ModelFieldValue<String?>? fileKey,
    ModelFieldValue<String?>? fileName,
    ModelFieldValue<String?>? fileUrl,
    ModelFieldValue<int>? speakerCount,
    ModelFieldValue<String?>? languageCode,
    ModelFieldValue<List<Version>?>? versions,
    ModelFieldValue<List<String>?>? interviewers,
    ModelFieldValue<List<String>?>? labels
  }) {
    return Recording._internal(
      id: id == null ? this.id : id.value,
      name: name == null ? this.name : name.value,
      date: date == null ? this.date : date.value,
      description: description == null ? this.description : description.value,
      fileKey: fileKey == null ? this.fileKey : fileKey.value,
      fileName: fileName == null ? this.fileName : fileName.value,
      fileUrl: fileUrl == null ? this.fileUrl : fileUrl.value,
      speakerCount: speakerCount == null ? this.speakerCount : speakerCount.value,
      languageCode: languageCode == null ? this.languageCode : languageCode.value,
      versions: versions == null ? this.versions : versions.value,
      interviewers: interviewers == null ? this.interviewers : interviewers.value,
      labels: labels == null ? this.labels : labels.value
    );
  }
  
  Recording.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _date = json['date'] != null ? amplify_core.TemporalDateTime.fromString(json['date']) : null,
      _description = json['description'],
      _fileKey = json['fileKey'],
      _fileName = json['fileName'],
      _fileUrl = json['fileUrl'],
      _speakerCount = (json['speakerCount'] as num?)?.toInt(),
      _languageCode = json['languageCode'],
      _versions = json['versions'] is List
        ? (json['versions'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Version.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _interviewers = json['interviewers']?.cast<String>(),
      _labels = json['labels']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'date': _date?.format(), 'description': _description, 'fileKey': _fileKey, 'fileName': _fileName, 'fileUrl': _fileUrl, 'speakerCount': _speakerCount, 'languageCode': _languageCode, 'versions': _versions?.map((Version? e) => e?.toJson()).toList(), 'interviewers': _interviewers, 'labels': _labels, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'date': _date,
    'description': _description,
    'fileKey': _fileKey,
    'fileName': _fileName,
    'fileUrl': _fileUrl,
    'speakerCount': _speakerCount,
    'languageCode': _languageCode,
    'versions': _versions,
    'interviewers': _interviewers,
    'labels': _labels,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final DATE = amplify_core.QueryField(fieldName: "date");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final FILEKEY = amplify_core.QueryField(fieldName: "fileKey");
  static final FILENAME = amplify_core.QueryField(fieldName: "fileName");
  static final FILEURL = amplify_core.QueryField(fieldName: "fileUrl");
  static final SPEAKERCOUNT = amplify_core.QueryField(fieldName: "speakerCount");
  static final LANGUAGECODE = amplify_core.QueryField(fieldName: "languageCode");
  static final VERSIONS = amplify_core.QueryField(
    fieldName: "versions",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Version'));
  static final INTERVIEWERS = amplify_core.QueryField(fieldName: "interviewers");
  static final LABELS = amplify_core.QueryField(fieldName: "labels");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Recording";
    modelSchemaDefinition.pluralName = "Recordings";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.DATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.FILEKEY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.FILENAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.FILEURL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.SPEAKERCOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.LANGUAGECODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Recording.VERSIONS,
      isRequired: false,
      ofModelName: 'Version',
      associatedKey: Version.RECORDINGID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.INTERVIEWERS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Recording.LABELS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _RecordingModelType extends amplify_core.ModelType<Recording> {
  const _RecordingModelType();
  
  @override
  Recording fromJson(Map<String, dynamic> jsonData) {
    return Recording.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Recording';
  }
}