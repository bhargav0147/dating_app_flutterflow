import '/components/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'your_interests_one_widget.dart' show YourInterestsOneWidget;
import 'package:flutter/material.dart';

class YourInterestsOneModel extends FlutterFlowModel<YourInterestsOneWidget> {
  ///  Local state fields for this page.

  List<String> selectedText = [];
  void addToSelectedText(String item) => selectedText.add(item);
  void removeFromSelectedText(String item) => selectedText.remove(item);
  void removeAtIndexFromSelectedText(int index) => selectedText.removeAt(index);
  void insertAtIndexInSelectedText(int index, String item) =>
      selectedText.insert(index, item);
  void updateSelectedTextAtIndex(int index, Function(String) updateFn) =>
      selectedText[index] = updateFn(selectedText[index]);

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
