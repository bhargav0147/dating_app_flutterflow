// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsModelStruct extends BaseStruct {
  UserDetailsModelStruct({
    String? gender,
    String? dateOfBirth,
    double? lat,
    double? long,
    String? bio,
    String? city,
    String? country,
    List<String>? profilePictures,
    String? name,
    String? mainImage,
  })  : _gender = gender,
        _dateOfBirth = dateOfBirth,
        _lat = lat,
        _long = long,
        _bio = bio,
        _city = city,
        _country = country,
        _profilePictures = profilePictures,
        _name = name,
        _mainImage = mainImage;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "dateOfBirth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  set dateOfBirth(String? val) => _dateOfBirth = val;

  bool hasDateOfBirth() => _dateOfBirth != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "long" field.
  double? _long;
  double get long => _long ?? 0.0;
  set long(double? val) => _long = val;

  void incrementLong(double amount) => long = long + amount;

  bool hasLong() => _long != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  set bio(String? val) => _bio = val;

  bool hasBio() => _bio != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "profilePictures" field.
  List<String>? _profilePictures;
  List<String> get profilePictures => _profilePictures ?? const [];
  set profilePictures(List<String>? val) => _profilePictures = val;

  void updateProfilePictures(Function(List<String>) updateFn) {
    updateFn(_profilePictures ??= []);
  }

  bool hasProfilePictures() => _profilePictures != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  set mainImage(String? val) => _mainImage = val;

  bool hasMainImage() => _mainImage != null;

  static UserDetailsModelStruct fromMap(Map<String, dynamic> data) =>
      UserDetailsModelStruct(
        gender: data['gender'] as String?,
        dateOfBirth: data['dateOfBirth'] as String?,
        lat: castToType<double>(data['lat']),
        long: castToType<double>(data['long']),
        bio: data['bio'] as String?,
        city: data['city'] as String?,
        country: data['country'] as String?,
        profilePictures: getDataList(data['profilePictures']),
        name: data['name'] as String?,
        mainImage: data['mainImage'] as String?,
      );

  static UserDetailsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserDetailsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'gender': _gender,
        'dateOfBirth': _dateOfBirth,
        'lat': _lat,
        'long': _long,
        'bio': _bio,
        'city': _city,
        'country': _country,
        'profilePictures': _profilePictures,
        'name': _name,
        'mainImage': _mainImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'dateOfBirth': serializeParam(
          _dateOfBirth,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'long': serializeParam(
          _long,
          ParamType.double,
        ),
        'bio': serializeParam(
          _bio,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'profilePictures': serializeParam(
          _profilePictures,
          ParamType.String,
          isList: true,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'mainImage': serializeParam(
          _mainImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDetailsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserDetailsModelStruct(
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['dateOfBirth'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
        long: deserializeParam(
          data['long'],
          ParamType.double,
          false,
        ),
        bio: deserializeParam(
          data['bio'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        profilePictures: deserializeParam<String>(
          data['profilePictures'],
          ParamType.String,
          true,
        ),
        name: deserializeParam(
          data['name'],
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
  String toString() => 'UserDetailsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserDetailsModelStruct &&
        gender == other.gender &&
        dateOfBirth == other.dateOfBirth &&
        lat == other.lat &&
        long == other.long &&
        bio == other.bio &&
        city == other.city &&
        country == other.country &&
        listEquality.equals(profilePictures, other.profilePictures) &&
        name == other.name &&
        mainImage == other.mainImage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        gender,
        dateOfBirth,
        lat,
        long,
        bio,
        city,
        country,
        profilePictures,
        name,
        mainImage
      ]);
}

UserDetailsModelStruct createUserDetailsModelStruct({
  String? gender,
  String? dateOfBirth,
  double? lat,
  double? long,
  String? bio,
  String? city,
  String? country,
  String? name,
  String? mainImage,
}) =>
    UserDetailsModelStruct(
      gender: gender,
      dateOfBirth: dateOfBirth,
      lat: lat,
      long: long,
      bio: bio,
      city: city,
      country: country,
      name: name,
      mainImage: mainImage,
    );
