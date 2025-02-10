// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FriendRequestMatchPageModelStruct extends BaseStruct {
  FriendRequestMatchPageModelStruct({
    String? userId,
    String? mainImage,
    String? username,
    int? age,
    String? id,
  })  : _userId = userId,
        _mainImage = mainImage,
        _username = username,
        _age = age,
        _id = id;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  set mainImage(String? val) => _mainImage = val;

  bool hasMainImage() => _mainImage != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  set age(int? val) => _age = val;

  void incrementAge(int amount) => age = age + amount;

  bool hasAge() => _age != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static FriendRequestMatchPageModelStruct fromMap(Map<String, dynamic> data) =>
      FriendRequestMatchPageModelStruct(
        userId: data['userId'] as String?,
        mainImage: data['mainImage'] as String?,
        username: data['username'] as String?,
        age: castToType<int>(data['age']),
        id: data['id'] as String?,
      );

  static FriendRequestMatchPageModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? FriendRequestMatchPageModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'mainImage': _mainImage,
        'username': _username,
        'age': _age,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'mainImage': serializeParam(
          _mainImage,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static FriendRequestMatchPageModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FriendRequestMatchPageModelStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
        mainImage: deserializeParam(
          data['mainImage'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FriendRequestMatchPageModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FriendRequestMatchPageModelStruct &&
        userId == other.userId &&
        mainImage == other.mainImage &&
        username == other.username &&
        age == other.age &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userId, mainImage, username, age, id]);
}

FriendRequestMatchPageModelStruct createFriendRequestMatchPageModelStruct({
  String? userId,
  String? mainImage,
  String? username,
  int? age,
  String? id,
}) =>
    FriendRequestMatchPageModelStruct(
      userId: userId,
      mainImage: mainImage,
      username: username,
      age: age,
      id: id,
    );
