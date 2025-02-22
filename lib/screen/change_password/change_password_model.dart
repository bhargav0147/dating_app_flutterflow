import '/backend/api_requests/api_calls.dart';
import '/components/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Back_Button component.
  late BackButtonModel backButtonModel;
  // State field(s) for oldPassword widget.
  FocusNode? oldPasswordFocusNode;
  TextEditingController? oldPasswordTextController;
  late bool oldPasswordVisibility;
  String? Function(BuildContext, String?)? oldPasswordTextControllerValidator;
  String? _oldPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Old Password';
    }

    return null;
  }

  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  String? _newPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter New Password';
    }

    return null;
  }

  // State field(s) for confirmeNewPassword widget.
  FocusNode? confirmeNewPasswordFocusNode;
  TextEditingController? confirmeNewPasswordTextController;
  late bool confirmeNewPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmeNewPasswordTextControllerValidator;
  String? _confirmeNewPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Confirmed New Password';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Change Password)] action in Button widget.
  ApiCallResponse? changePasswordResponse;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    oldPasswordVisibility = false;
    oldPasswordTextControllerValidator = _oldPasswordTextControllerValidator;
    newPasswordVisibility = false;
    newPasswordTextControllerValidator = _newPasswordTextControllerValidator;
    confirmeNewPasswordVisibility = false;
    confirmeNewPasswordTextControllerValidator =
        _confirmeNewPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    oldPasswordFocusNode?.dispose();
    oldPasswordTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    confirmeNewPasswordFocusNode?.dispose();
    confirmeNewPasswordTextController?.dispose();
  }
}
