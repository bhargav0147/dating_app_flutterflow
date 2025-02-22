import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for GridView widget.

  PagingController<ApiPagingParams, dynamic>? gridViewPagingController1;
  Function(ApiPagingParams nextPageMarker)? gridViewApiCall1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    gridViewPagingController1?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setGridViewController1(
    Function(ApiPagingParams) apiCall,
  ) {
    gridViewApiCall1 = apiCall;
    return gridViewPagingController1 ??= _createGridViewController1(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createGridViewController1(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(gridViewGetMyPostsPage1);
  }

  void gridViewGetMyPostsPage1(ApiPagingParams nextPageMarker) =>
      gridViewApiCall1!(nextPageMarker).then((gridViewGetMyPostsResponse) {
        final pageItems = ((gridViewGetMyPostsResponse.jsonBody
                        .toList()
                        .map<MyPostModelStruct?>(MyPostModelStruct.maybeFromMap)
                        .toList() as Iterable<MyPostModelStruct?>)
                    .withoutNulls ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        gridViewPagingController1?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: gridViewGetMyPostsResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForGridView1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (gridViewPagingController1?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
