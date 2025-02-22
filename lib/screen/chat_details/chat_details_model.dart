import '/components/back_button/back_button_widget.dart';
import '/components/chat_component/chat_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chat_details_widget.dart' show ChatDetailsWidget;
import 'package:flutter/material.dart';

class ChatDetailsModel extends FlutterFlowModel<ChatDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Chat_Component component.
  late ChatComponentModel chatComponentModel;
  // Model for Back_Button component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    chatComponentModel = createModel(context, () => ChatComponentModel());
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    chatComponentModel.dispose();
    backButtonModel.dispose();
  }
}
