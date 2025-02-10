import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _authToken = prefs.getString('ff_authToken') ?? _authToken;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _authToken = '';
  String get authToken => _authToken;
  set authToken(String value) {
    _authToken = value;
    prefs.setString('ff_authToken', value);
  }

  UserSignUpFormModelStruct _UserSignUpFormDetails =
      UserSignUpFormModelStruct();
  UserSignUpFormModelStruct get UserSignUpFormDetails => _UserSignUpFormDetails;
  set UserSignUpFormDetails(UserSignUpFormModelStruct value) {
    _UserSignUpFormDetails = value;
  }

  void updateUserSignUpFormDetailsStruct(
      Function(UserSignUpFormModelStruct) updateFn) {
    updateFn(_UserSignUpFormDetails);
  }

  UserProfileFormModelStruct _UserProfileFormDetails =
      UserProfileFormModelStruct();
  UserProfileFormModelStruct get UserProfileFormDetails =>
      _UserProfileFormDetails;
  set UserProfileFormDetails(UserProfileFormModelStruct value) {
    _UserProfileFormDetails = value;
  }

  void updateUserProfileFormDetailsStruct(
      Function(UserProfileFormModelStruct) updateFn) {
    updateFn(_UserProfileFormDetails);
  }

  UserDetailsMainModelStruct _userProfile = UserDetailsMainModelStruct();
  UserDetailsMainModelStruct get userProfile => _userProfile;
  set userProfile(UserDetailsMainModelStruct value) {
    _userProfile = value;
  }

  void updateUserProfileStruct(Function(UserDetailsMainModelStruct) updateFn) {
    updateFn(_userProfile);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
