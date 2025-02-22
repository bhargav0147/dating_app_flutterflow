// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserPrefrencesDetailsModelStruct extends BaseStruct {
  UserPrefrencesDetailsModelStruct({
    String? genderPrefrences,
    int? minAge,
    int? maxAge,
    List<String>? interests,
  })  : _genderPrefrences = genderPrefrences,
        _minAge = minAge,
        _maxAge = maxAge,
        _interests = interests;

  // "genderPrefrences" field.
  String? _genderPrefrences;
  String get genderPrefrences => _genderPrefrences ?? '';
  set genderPrefrences(String? val) => _genderPrefrences = val;

  bool hasGenderPrefrences() => _genderPrefrences != null;

  // "minAge" field.
  int? _minAge;
  int get minAge => _minAge ?? 0;
  set minAge(int? val) => _minAge = val;

  void incrementMinAge(int amount) => minAge = minAge + amount;

  bool hasMinAge() => _minAge != null;

  // "maxAge" field.
  int? _maxAge;
  int get maxAge => _maxAge ?? 0;
  set maxAge(int? val) => _maxAge = val;

  void incrementMaxAge(int amount) => maxAge = maxAge + amount;

  bool hasMaxAge() => _maxAge != null;

  // "interests" field.
  List<String>? _interests;
  List<String> get interests => _interests ?? const [];
  set interests(List<String>? val) => _interests = val;

  void updateInterests(Function(List<String>) updateFn) {
    updateFn(_interests ??= []);
  }

  bool hasInterests() => _interests != null;

  static UserPrefrencesDetailsModelStruct fromMap(Map<String, dynamic> data) =>
      UserPrefrencesDetailsModelStruct(
        genderPrefrences: data['genderPrefrences'] as String?,
        minAge: castToType<int>(data['minAge']),
        maxAge: castToType<int>(data['maxAge']),
        interests: getDataList(data['interests']),
      );

  static UserPrefrencesDetailsModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? UserPrefrencesDetailsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'genderPrefrences': _genderPrefrences,
        'minAge': _minAge,
        'maxAge': _maxAge,
        'interests': _interests,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'genderPrefrences': serializeParam(
          _genderPrefrences,
          ParamType.String,
        ),
        'minAge': serializeParam(
          _minAge,
          ParamType.int,
        ),
        'maxAge': serializeParam(
          _maxAge,
          ParamType.int,
        ),
        'interests': serializeParam(
          _interests,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static UserPrefrencesDetailsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserPrefrencesDetailsModelStruct(
        genderPrefrences: deserializeParam(
          data['genderPrefrences'],
          ParamType.String,
          false,
        ),
        minAge: deserializeParam(
          data['minAge'],
          ParamType.int,
          false,
        ),
        maxAge: deserializeParam(
          data['maxAge'],
          ParamType.int,
          false,
        ),
        interests: deserializeParam<String>(
          data['interests'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'UserPrefrencesDetailsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserPrefrencesDetailsModelStruct &&
        genderPrefrences == other.genderPrefrences &&
        minAge == other.minAge &&
        maxAge == other.maxAge &&
        listEquality.equals(interests, other.interests);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([genderPrefrences, minAge, maxAge, interests]);
}

UserPrefrencesDetailsModelStruct createUserPrefrencesDetailsModelStruct({
  String? genderPrefrences,
  int? minAge,
  int? maxAge,
}) =>
    UserPrefrencesDetailsModelStruct(
      genderPrefrences: genderPrefrences,
      minAge: minAge,
      maxAge: maxAge,
    );
