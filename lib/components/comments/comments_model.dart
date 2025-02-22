import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comments_widget.dart' show CommentsWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CommentsModel extends FlutterFlowModel<CommentsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CommentListView widget.

  PagingController<ApiPagingParams, dynamic>? commentListViewPagingController;
  Function(ApiPagingParams nextPageMarker)? commentListViewApiCall;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Add New Comment)] action in IconButton widget.
  ApiCallResponse? addNewCommentResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commentListViewPagingController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setCommentListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    commentListViewApiCall = apiCall;
    return commentListViewPagingController ??=
        _createCommentListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createCommentListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(commentListViewGetCommentsPage);
  }

  void commentListViewGetCommentsPage(ApiPagingParams nextPageMarker) =>
      commentListViewApiCall!(nextPageMarker)
          .then((commentListViewGetCommentsResponse) {
        final pageItems = ((commentListViewGetCommentsResponse.jsonBody
                        .toList()
                        .map<CommentModelStruct?>(
                            CommentModelStruct.maybeFromMap)
                        .toList() as Iterable<CommentModelStruct?>)
                    .withoutNulls ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        commentListViewPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: commentListViewGetCommentsResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForCommentListView({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (commentListViewPagingController?.nextPageKey?.nextPageNumber ?? 0) >
              0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
