import '/backend/api_requests/api_calls.dart';
import '/components/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_post_widget.dart' show NewPostWidget;
import 'package:flutter/material.dart';

class NewPostModel extends FlutterFlowModel<NewPostWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? newPostEditImage;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Back_Button component.
  late BackButtonModel backButtonModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This Filed Is Required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Add New Post)] action in Button widget.
  ApiCallResponse? addNewPostResponse;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
