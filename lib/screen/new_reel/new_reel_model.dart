import '/backend/api_requests/api_calls.dart';
import '/components/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_reel_widget.dart' show NewReelWidget;
import 'package:flutter/material.dart';

class NewReelModel extends FlutterFlowModel<NewReelWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? newPostEditImage;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Back_Button component.
  late BackButtonModel backButtonModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Upload New Reel)] action in Button widget.
  ApiCallResponse? addNewPostResponse;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
  }
}
