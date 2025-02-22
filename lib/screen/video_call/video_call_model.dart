import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'video_call_widget.dart' show VideoCallWidget;
import 'package:flutter/material.dart';

class VideoCallModel extends FlutterFlowModel<VideoCallWidget> {
  ///  Local state fields for this page.

  bool isSound = true;

  bool isVideo = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs1 = 120000;
  int timerMilliseconds1 = 120000;
  String timerValue1 =
      StopWatchTimer.getDisplayTime(120000, milliSecond: false);
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs2 = 120000;
  int timerMilliseconds2 = 120000;
  String timerValue2 =
      StopWatchTimer.getDisplayTime(120000, milliSecond: false);
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController1.dispose();
    timerController2.dispose();
  }
}
