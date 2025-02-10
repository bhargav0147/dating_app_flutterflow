// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileFormModelStruct extends BaseStruct {
  UserProfileFormModelStruct({
    String? bio,
    String? city,
    String? country,
    String? name,
    String? dateOfBirth,
    String? gender,
    String? lat,
    String? long,
  })  : _bio = bio,
        _city = city,
        _country = country,
        _name = name,
        _dateOfBirth = dateOfBirth,
        _gender = gender,
        _lat = lat,
        _long = long;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "dateOfBirth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  set dateOfBirth(String? val) => _dateOfBirth = val;

  bool hasDateOfBirth() => _dateOfBirth != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "lat" field.
  String? _lat;
  String get lat => _lat ?? '';
  set lat(String? val) => _lat = val;

  bool hasLat() => _lat != null;

  // "long" field.
  String? _long;
  String get long => _long ?? '';
  set long(String? val) => _long = val;

  bool hasLong() => _long != null;

  static UserProfileFormModelStruct fromMap(Map<String, dynamic> data) =>
      UserProfileFormModelStruct(
        bio: data['bio'] as String?,
        city: data['city'] as String?,
        country: data['country'] as String?,
        name: data['name'] as String?,
        dateOfBirth: data['dateOfBirth'] as String?,
        gender: data['gender'] as String?,
        lat: data['lat'] as String?,
        long: data['long'] as String?,
      );

  static UserProfileFormModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserProfileFormModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'bio': _bio,
        'city': _city,
        'country': _country,
        'name': _name,
        'dateOfBirth': _dateOfBirth,
        'gender': _gender,
        'lat': _lat,
        'long': _long,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'dateOfBirth': serializeParam(
          _dateOfBirth,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.String,
        ),
        'long': serializeParam(
          _long,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserProfileFormModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserProfileFormModelStruct(
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['dateOfBirth'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.String,
          false,
        ),
        long: deserializeParam(
          data['long'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserProfileFormModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserProfileFormModelStruct &&
        bio == other.bio &&
        city == other.city &&
        country == other.country &&
        name == other.name &&
        dateOfBirth == other.dateOfBirth &&
        gender == other.gender &&
        lat == other.lat &&
        long == other.long;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([bio, city, country, name, dateOfBirth, gender, lat, long]);
}

UserProfileFormModelStruct createUserProfileFormModelStruct({
  String? bio,
  String? city,
  String? country,
  String? name,
  String? dateOfBirth,
  String? gender,
  String? lat,
  String? long,
}) =>
    UserProfileFormModelStruct(
      bio: bio,
      city: city,
      country: country,
      name: name,
      dateOfBirth: dateOfBirth,
      gender: gender,
      lat: lat,
      long: long,
    );
