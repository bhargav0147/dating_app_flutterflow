import '/backend/api_requests/api_calls.dart';
import '/components/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'multiple_image_set_widget.dart' show MultipleImageSetWidget;
import 'package:flutter/material.dart';

class MultipleImageSetModel extends FlutterFlowModel<MultipleImageSetWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> selectedImagesFromDevice = [];
  void addToSelectedImagesFromDevice(FFUploadedFile item) =>
      selectedImagesFromDevice.add(item);
  void removeFromSelectedImagesFromDevice(FFUploadedFile item) =>
      selectedImagesFromDevice.remove(item);
  void removeAtIndexFromSelectedImagesFromDevice(int index) =>
      selectedImagesFromDevice.removeAt(index);
  void insertAtIndexInSelectedImagesFromDevice(
          int index, FFUploadedFile item) =>
      selectedImagesFromDevice.insert(index, item);
  void updateSelectedImagesFromDeviceAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      selectedImagesFromDevice[index] =
          updateFn(selectedImagesFromDevice[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Back_Button component.
  late BackButtonModel backButtonModel;
  // Stores action output result for [Backend Call - API (Update Profile Details)] action in Button widget.
  ApiCallResponse? createProfileResponse;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
  }
}
