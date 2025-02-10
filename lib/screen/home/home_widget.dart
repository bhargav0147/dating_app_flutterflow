import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/home_frined_card/home_frined_card_widget.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/walkthroughs/home_page.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: DatingGroup.getUserHomePageCall.call(
                    authToken: FFAppState().authToken,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitRipple(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    final swipeableStackGetUserHomePageResponse =
                        snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final friendList = (swipeableStackGetUserHomePageResponse
                                        .jsonBody
                                        .toList()
                                        .map<UserHomePageDetailsModelStruct?>(
                                            UserHomePageDetailsModelStruct
                                                .maybeFromMap)
                                        .toList()
                                    as Iterable<
                                        UserHomePageDetailsModelStruct?>)
                                .withoutNulls
                                .toList() ??
                            [];
                        if (friendList.isEmpty) {
                          return Center(
                            child: SvgPicture.asset(
                              'assets/images/EmptyImage.svg',
                              width: 250.0,
                              height: 250.0,
                            ),
                          );
                        }

                        return FlutterFlowSwipeableStack(
                          onSwipeFn: (index) {},
                          onLeftSwipe: (index) {},
                          onRightSwipe: (index) {},
                          onUpSwipe: (index) async {
                            var shouldSetState = false;
                            final friendListItem = friendList[index];
                            _model.sendFriendRequestResponse =
                                await DatingGroup.sendFriendRequestCall.call(
                              authToken: FFAppState().authToken,
                              userId: friendListItem.userId,
                            );

                            shouldSetState = true;
                            if ((_model.sendFriendRequestResponse?.succeeded ??
                                true)) {
                              if (shouldSetState) safeSetState(() {});
                              return;
                            }

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  valueOrDefault<String>(
                                    DatingGroup.sendFriendRequestCall
                                        .errorMessage(
                                      (_model.sendFriendRequestResponse
                                              ?.jsonBody ??
                                          ''),
                                    ),
                                    'Please Try Again',
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 3000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                            if (shouldSetState) safeSetState(() {});
                            return;
                            if (shouldSetState) safeSetState(() {});
                          },
                          onDownSwipe: (index) {},
                          itemBuilder: (context, friendListIndex) {
                            final friendListItem = friendList[friendListIndex];
                            return wrapWithModel(
                              model: _model.homeFrinedCardModels.getModel(
                                friendListIndex.toString(),
                                friendListIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: HomeFrinedCardWidget(
                                key: Key(
                                  'Keyi9d_${friendListIndex.toString()}',
                                ),
                                userDetails: friendListItem,
                              ),
                            );
                          },
                          itemCount: friendList.length,
                          controller: _model.swipeableStackController,
                          loop: false,
                          cardDisplayCount: 3,
                          scale: 0.9,
                          allowedSwipeDirection:
                              AllowedSwipeDirection.symmetric(vertical: true),
                        ).addWalkthrough(
                          swipeableStack6ek9e8pu,
                          _model.homePageController,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  valueOrDefault<double>(
                    FFAppConstants.SIDEPADDING,
                    0.0,
                  ),
                  0.0,
                  valueOrDefault<double>(
                    FFAppConstants.SIDEPADDING,
                    0.0,
                  ),
                  0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 100.0,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 78.0,
                      height: 78.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 50.0,
                            color: Color(0x11000000),
                            offset: Offset(
                              0.0,
                              20.0,
                            ),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: const Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.close_rounded,
                          color: Color(0xFFF27121),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 15.0,
                            color: Color(0x32E94057),
                            offset: Offset(
                              0.0,
                              15.0,
                            ),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.favorite_outlined,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 51.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 78.0,
                      height: 78.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 50.0,
                            color: Color(0x11000000),
                            offset: Offset(
                              0.0,
                              20.0,
                            ),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: const Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.star_sharp,
                          color: Color(0xFF8A2387),
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ].divide(const SizedBox(height: 20.0)).addToStart(const SizedBox(height: 25.0)),
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.homePageController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
