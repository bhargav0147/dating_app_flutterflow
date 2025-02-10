// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserHomePageDetailsModelStruct extends BaseStruct {
  UserHomePageDetailsModelStruct({
    String? username,
    String? bio,
    int? age,
    String? country,
    String? city,
    String? distance,
    String? mainImage,
    List<String>? profileImage,
    String? userId,
  })  : _username = username,
        _bio = bio,
        _age = age,
        _country = country,
        _city = city,
        _distance = distance,
        _mainImage = mainImage,
        _profileImage = profileImage,
        _userId = userId;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  set bio(String? val) => _bio = val;

  bool hasBio() => _bio != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  set age(int? val) => _age = val;

  void incrementAge(int amount) => age = age + amount;

  bool hasAge() => _age != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "distance" field.
  String? _distance;
  String get distance => _distance ?? '';
  set distance(String? val) => _distance = val;

  bool hasDistance() => _distance != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  set mainImage(String? val) => _mainImage = val;

  bool hasMainImage() => _mainImage != null;

  // "profileImage" field.
  List<String>? _profileImage;
  List<String> get profileImage => _profileImage ?? const [];
  set profileImage(List<String>? val) => _profileImage = val;

  void updateProfileImage(Function(List<String>) updateFn) {
    updateFn(_profileImage ??= []);
  }

  bool hasProfileImage() => _profileImage != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  static UserHomePageDetailsModelStruct fromMap(Map<String, dynamic> data) =>
      UserHomePageDetailsModelStruct(
        username: data['username'] as String?,
        bio: data['bio'] as String?,
        age: castToType<int>(data['age']),
        country: data['country'] as String?,
        city: data['city'] as String?,
        distance: data['distance'] as String?,
        mainImage: data['mainImage'] as String?,
        profileImage: getDataList(data['profileImage']),
        userId: data['userId'] as String?,
      );

  static UserHomePageDetailsModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? UserHomePageDetailsModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'username': _username,
        'bio': _bio,
        'age': _age,
        'country': _country,
        'city': _city,
        'distance': _distance,
        'mainImage': _mainImage,
        'profileImage': _profileImage,
        'userId': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'bio': serializeParam(
          _bio,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.int,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.String,
        ),
        'mainImage': serializeParam(
          _mainImage,
          ParamType.String,
        ),
        'profileImage': serializeParam(
          _profileImage,
          ParamType.String,
          isList: true,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserHomePageDetailsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserHomePageDetailsModelStruct(
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        bio: deserializeParam(
          data['bio'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.int,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.String,
          false,
        ),
        mainImage: deserializeParam(
          data['mainImage'],
          ParamType.String,
          false,
        ),
        profileImage: deserializeParam<String>(
          data['profileImage'],
          ParamType.String,
          true,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserHomePageDetailsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserHomePageDetailsModelStruct &&
        username == other.username &&
        bio == other.bio &&
        age == other.age &&
        country == other.country &&
        city == other.city &&
        distance == other.distance &&
        mainImage == other.mainImage &&
        listEquality.equals(profileImage, other.profileImage) &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        username,
        bio,
        age,
        country,
        city,
        distance,
        mainImage,
        profileImage,
        userId
      ]);
}

UserHomePageDetailsModelStruct createUserHomePageDetailsModelStruct({
  String? username,
  String? bio,
  int? age,
  String? country,
  String? city,
  String? distance,
  String? mainImage,
  String? userId,
}) =>
    UserHomePageDetailsModelStruct(
      username: username,
      bio: bio,
      age: age,
      country: country,
      city: city,
      distance: distance,
      mainImage: mainImage,
      userId: userId,
    );
