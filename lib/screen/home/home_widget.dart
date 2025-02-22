import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/home_frined_card/home_frined_card_widget.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/walkthroughs/home_page_slider.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'Home';
  static String routePath = '/home';

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

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() =>
          _model.homePageSliderController = createPageWalkthrough(context));
      _model.homePageSliderController?.show(context: context);
    });
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
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
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
                                var _shouldSetState = false;
                                final friendListItem = friendList[index];
                                _model.sendFriendRequestResponse =
                                    await DatingGroup.sendFriendRequestCall
                                        .call(
                                  authToken: FFAppState().authToken,
                                  userId: friendListItem.userId,
                                );

                                _shouldSetState = true;
                                if ((_model
                                        .sendFriendRequestResponse?.succeeded ??
                                    true)) {
                                  if (_shouldSetState) safeSetState(() {});
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
                                    duration: Duration(milliseconds: 3000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
                                  ),
                                );
                                if (_shouldSetState) safeSetState(() {});
                                return;
                                if (_shouldSetState) safeSetState(() {});
                              },
                              onDownSwipe: (index) {},
                              itemBuilder: (context, friendListIndex) {
                                final friendListItem =
                                    friendList[friendListIndex];
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
                                  AllowedSwipeDirection.symmetric(
                                      vertical: true),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
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
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 78.0,
                            height: 78.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
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
                            child: Align(
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
                              boxShadow: [
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
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.favorite_outlined,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 51.0,
                              ),
                            ),
                          ),
                          Container(
                            width: 78.0,
                            height: 78.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
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
                            child: Align(
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
              ]
                  .divide(SizedBox(height: 20.0))
                  .addToStart(SizedBox(height: 25.0)),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(),
              ).addWalkthrough(
                containerFj5qhccf,
                _model.homePageSliderController,
              ),
            ),
          ],
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.homePageSliderController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
