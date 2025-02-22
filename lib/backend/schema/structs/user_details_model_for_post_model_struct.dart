// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsModelForPostModelStruct extends BaseStruct {
  UserDetailsModelForPostModelStruct({
    String? id,
    String? username,
    String? mainImage,
  })  : _id = id,
        _username = username,
        _mainImage = mainImage;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  set mainImage(String? val) => _mainImage = val;

  bool hasMainImage() => _mainImage != null;

  static UserDetailsModelForPostModelStruct fromMap(
          Map<String, dynamic> data) =>
      UserDetailsModelForPostModelStruct(
        id: data['id'] as String?,
        username: data['username'] as String?,
        mainImage: data['mainImage'] as String?,
      );

  static UserDetailsModelForPostModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? UserDetailsModelForPostModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'username': _username,
        'mainImage': _mainImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'mainImage': serializeParam(
          _mainImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDetailsModelForPostModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserDetailsModelForPostModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        mainImage: deserializeParam(
          data['mainImage'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDetailsModelForPostModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDetailsModelForPostModelStruct &&
        id == other.id &&
        username == other.username &&
        mainImage == other.mainImage;
  }

  @override
  int get hashCode => const ListEquality().hash([id, username, mainImage]);
}

UserDetailsModelForPostModelStruct createUserDetailsModelForPostModelStruct({
  String? id,
  String? username,
  String? mainImage,
}) =>
    UserDetailsModelForPostModelStruct(
      id: id,
      username: username,
      mainImage: mainImage,
    );
