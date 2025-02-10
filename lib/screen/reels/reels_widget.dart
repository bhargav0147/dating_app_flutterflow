import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'reels_model.dart';
export 'reels_model.dart';

class ReelsWidget extends StatefulWidget {
  const ReelsWidget({super.key});

  @override
  State<ReelsWidget> createState() => _ReelsWidgetState();
}

class _ReelsWidgetState extends State<ReelsWidget> {
  late ReelsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReelsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Reels',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  fontSize: 34.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('New_Reel');
                },
                child: FaIcon(
                  FontAwesomeIcons.plusSquare,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: PagedPageView<ApiPagingParams, dynamic>(
              pagingController: _model.setPageViewController(
                (nextPageMarker) => DatingGroup.getReelVideoCall.call(
                  authToken: FFAppState().authToken,
                  page: functions
                      .addOneForPagination(nextPageMarker.nextPageNumber),
                  limit: 15,
                ),
              ),
              pageController: _model.pageViewController ??= PageController(
                  initialPage: max(0, min(0, _model.pageViewLoadedLength - 1))),
              onPageChanged: (_) => safeSetState(() {
                _model.pageViewLoadedLength =
                    _model.pageViewPagingController!.itemList!.length;
              }),
              scrollDirection: Axis.vertical,
              builderDelegate: PagedChildBuilderDelegate<dynamic>(
                // Customize what your widget looks like when it's loading the first page.
                firstPageProgressIndicatorBuilder: (_) => Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitRipple(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                ),
                // Customize what your widget looks like when it's loading another page.
                newPageProgressIndicatorBuilder: (_) => Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitRipple(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                ),
                noItemsFoundIndicatorBuilder: (_) => Center(
                  child: SvgPicture.asset(
                    'assets/images/EmptyImage.svg',
                    width: 250.0,
                    height: 250.0,
                  ),
                ),
                itemBuilder: (context, _, reelsListIndex) {
                  final reelsListItem = _model
                      .pageViewPagingController!.itemList![reelsListIndex];
                  return FlutterFlowVideoPlayer(
                    path: reelsListItem.originalUrl,
                    videoType: VideoType.network,
                    autoPlay: true,
                    looping: true,
                    showControls: false,
                    allowFullScreen: false,
                    allowPlaybackSpeedMenu: false,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
