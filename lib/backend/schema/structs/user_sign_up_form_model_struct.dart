// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserSignUpFormModelStruct extends BaseStruct {
  UserSignUpFormModelStruct({
    String? email,
    String? username,
    String? password,
    String? mobile,
    String? otp,
    String? countryCode,
  })  : _email = email,
        _username = username,
        _password = password,
        _mobile = mobile,
        _otp = otp,
        _countryCode = countryCode;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  set mobile(String? val) => _mobile = val;

  bool hasMobile() => _mobile != null;

  // "otp" field.
  String? _otp;
  String get otp => _otp ?? '';
  set otp(String? val) => _otp = val;

  bool hasOtp() => _otp != null;

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '+91';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  static UserSignUpFormModelStruct fromMap(Map<String, dynamic> data) =>
      UserSignUpFormModelStruct(
        email: data['email'] as String?,
        username: data['username'] as String?,
        password: data['password'] as String?,
        mobile: data['mobile'] as String?,
        otp: data['otp'] as String?,
        countryCode: data['countryCode'] as String?,
      );

  static UserSignUpFormModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserSignUpFormModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'username': _username,
        'password': _password,
        'mobile': _mobile,
        'otp': _otp,
        'countryCode': _countryCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'mobile': serializeParam(
          _mobile,
          ParamType.String,
        ),
        'otp': serializeParam(
          _otp,
          ParamType.String,
        ),
        'countryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserSignUpFormModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserSignUpFormModelStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        mobile: deserializeParam(
          data['mobile'],
          ParamType.String,
          false,
        ),
        otp: deserializeParam(
          data['otp'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['countryCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserSignUpFormModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserSignUpFormModelStruct &&
        email == other.email &&
        username == other.username &&
        password == other.password &&
        mobile == other.mobile &&
        otp == other.otp &&
        countryCode == other.countryCode;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([email, username, password, mobile, otp, countryCode]);
}

UserSignUpFormModelStruct createUserSignUpFormModelStruct({
  String? email,
  String? username,
  String? password,
  String? mobile,
  String? otp,
  String? countryCode,
}) =>
    UserSignUpFormModelStruct(
      email: email,
      username: username,
      password: password,
      mobile: mobile,
      otp: otp,
      countryCode: countryCode,
    );
