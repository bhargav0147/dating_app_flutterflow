import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'matches_widget.dart' show MatchesWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MatchesModel extends FlutterFlowModel<MatchesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FriendRequestList widget.

  PagingController<ApiPagingParams, dynamic>? friendRequestListPagingController;
  Function(ApiPagingParams nextPageMarker)? friendRequestListApiCall;

  // Stores action output result for [Backend Call - API (Friend Request Status Change)] action in IconButton widget.
  ApiCallResponse? friendRequestResponse;
  // Stores action output result for [Backend Call - API (Friend Request Status Change)] action in IconButton widget.
  ApiCallResponse? friendRequestAccepetResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    friendRequestListPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setFriendRequestListController(
    Function(ApiPagingParams) apiCall,
  ) {
    friendRequestListApiCall = apiCall;
    return friendRequestListPagingController ??=
        _createFriendRequestListController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createFriendRequestListController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller
      ..addPageRequestListener(friendRequestListGetFriendRequestPage);
  }

  void friendRequestListGetFriendRequestPage(ApiPagingParams nextPageMarker) =>
      friendRequestListApiCall!(nextPageMarker)
          .then((friendRequestListGetFriendRequestResponse) {
        final pageItems = ((friendRequestListGetFriendRequestResponse.jsonBody
                            .toList()
                            .map<FriendRequestMatchPageModelStruct?>(
                                FriendRequestMatchPageModelStruct.maybeFromMap)
                            .toList()
                        as Iterable<FriendRequestMatchPageModelStruct?>)
                    .withoutNulls ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        friendRequestListPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: friendRequestListGetFriendRequestResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForFriendRequestList({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (friendRequestListPagingController?.nextPageKey?.nextPageNumber ??
                  0) >
              0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
