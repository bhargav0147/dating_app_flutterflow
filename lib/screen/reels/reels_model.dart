import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reels_widget.dart' show ReelsWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ReelsModel extends FlutterFlowModel<ReelsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  int pageViewLoadedLength = 25;
  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  PagingController<ApiPagingParams, dynamic>? pageViewPagingController;
  Function(ApiPagingParams nextPageMarker)? pageViewApiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pageViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setPageViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    pageViewApiCall = apiCall;
    return pageViewPagingController ??= _createPageViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createPageViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(pageViewGetReelVideoPage);
  }

  void pageViewGetReelVideoPage(ApiPagingParams nextPageMarker) =>
      pageViewApiCall!(nextPageMarker).then((pageViewGetReelVideoResponse) {
        final pageItems = ((pageViewGetReelVideoResponse.jsonBody
                        .toList()
                        .map<ReelsMainModelStruct?>(
                            ReelsMainModelStruct.maybeFromMap)
                        .toList() as Iterable<ReelsMainModelStruct?>)
                    .withoutNulls ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        pageViewPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: pageViewGetReelVideoResponse,
                )
              : null,
        );
      });
}
