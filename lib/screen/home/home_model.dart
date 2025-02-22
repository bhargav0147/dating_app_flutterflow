import '/backend/api_requests/api_calls.dart';
import '/components/home_frined_card/home_frined_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? homePageSliderController;
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Stores action output result for [Backend Call - API (Send Friend Request)] action in SwipeableStack widget.
  ApiCallResponse? sendFriendRequestResponse;
  // Models for Home_Frined_Card dynamic component.
  late FlutterFlowDynamicModels<HomeFrinedCardModel> homeFrinedCardModels;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
    homeFrinedCardModels =
        FlutterFlowDynamicModels(() => HomeFrinedCardModel());
  }

  @override
  void dispose() {
    homePageSliderController?.finish();
    homeFrinedCardModels.dispose();
  }
}
