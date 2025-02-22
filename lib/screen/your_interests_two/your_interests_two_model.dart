import '/backend/api_requests/api_calls.dart';
import '/components/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'your_interests_two_widget.dart' show YourInterestsTwoWidget;
import 'package:flutter/material.dart';

class YourInterestsTwoModel extends FlutterFlowModel<YourInterestsTwoWidget> {
  ///  Local state fields for this page.

  String? selectedGender;

  ///  State fields for stateful widgets in this page.

  // Model for Back_Button component.
  late BackButtonModel backButtonModel;
  // State field(s) for MinAgeSlider widget.
  double? minAgeSliderValue;
  // State field(s) for MaxAgeSlider widget.
  double? maxAgeSliderValue;
  // Stores action output result for [Backend Call - API (Update Your Prefrence)] action in Button widget.
  ApiCallResponse? updatePrefResponse;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
  }
}
