import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'splash_model.dart';
export 'splash_model.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  static String routeName = 'Splash';
  static String routePath = '/splash';

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      if (FFAppState().authToken != '') {
        _model.userProfileResponse = await DatingGroup.getUserProfileCall.call(
          authToken: FFAppState().authToken,
        );

        if ((_model.userProfileResponse?.succeeded ?? true)) {
          if (UserDetailsMainModelStruct.maybeFromMap(
                  (_model.userProfileResponse?.jsonBody ?? ''))!
              .isProfileCompleted) {
            if (UserDetailsMainModelStruct.maybeFromMap(
                    (_model.userProfileResponse?.jsonBody ?? ''))!
                .isPrefrencesCompleted) {
              FFAppState().userProfile =
                  UserDetailsMainModelStruct.maybeFromMap(
                      (_model.userProfileResponse?.jsonBody ?? ''))!;
              safeSetState(() {});

              context.goNamed(HomeWidget.routeName);

              return;
            } else {
              context.goNamed(
                YourInterestsOneWidget.routeName,
                queryParameters: {
                  'isBackAllow': serializeParam(
                    false,
                    ParamType.bool,
                  ),
                }.withoutNulls,
              );

              return;
            }
          } else {
            context.goNamed(GenderWidget.routeName);

            return;
          }
        } else {
          context.goNamed(OnboardingWidget.routeName);

          return;
        }
      } else {
        context.goNamed(OnboardingWidget.routeName);

        return;
      }
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
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Icon(
            Icons.favorite_rounded,
            color: FlutterFlowTheme.of(context).info,
            size: 250.0,
          ),
        ),
      ),
    );
  }
}
