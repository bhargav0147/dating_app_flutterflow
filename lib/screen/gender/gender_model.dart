import '/components/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'gender_widget.dart' show GenderWidget;
import 'package:flutter/material.dart';

class GenderModel extends FlutterFlowModel<GenderWidget> {
  ///  Local state fields for this page.

  String? selectedGender;

  ///  State fields for stateful widgets in this page.

  // Model for Back_Button component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
  }
}
