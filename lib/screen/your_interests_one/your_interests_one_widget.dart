import '/components/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'your_interests_one_model.dart';
export 'your_interests_one_model.dart';

class YourInterestsOneWidget extends StatefulWidget {
  const YourInterestsOneWidget({
    super.key,
    required this.isBackAllow,
  });

  final bool? isBackAllow;

  static String routeName = 'Your_Interests_One';
  static String routePath = '/yourInterestsOne';

  @override
  State<YourInterestsOneWidget> createState() => _YourInterestsOneWidgetState();
}

class _YourInterestsOneWidgetState extends State<YourInterestsOneWidget> {
  late YourInterestsOneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YourInterestsOneModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              valueOrDefault<double>(
                FFAppConstants.SIDEPADDING,
                0.0,
              ),
              valueOrDefault<double>(
                FFAppConstants.APPBARPADDING,
                0.0,
              ),
              valueOrDefault<double>(
                FFAppConstants.SIDEPADDING,
                0.0,
              ),
              15.0),
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (widget.isBackAllow ?? true)
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: wrapWithModel(
                        model: _model.backButtonModel,
                        updateCallback: () => safeSetState(() {}),
                        child: BackButtonWidget(),
                      ),
                    ),
                  ),
                Text(
                  'Your Interests',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        fontSize: 34.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Select a minimum 5 of your interests and let everyone know what you’re passionate about.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(),
                                  'Photography')) {
                                _model.removeFromSelectedText('Photography');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Photography');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(),
                                        'Photography')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(),
                                          'Photography')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.camera_alt,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Photography')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Photography',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Photography')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Shopping')) {
                                _model.removeFromSelectedText('Shopping');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Shopping');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(),
                                        'Shopping')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(),
                                          'Shopping')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.shoppingBag,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Shopping')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Shopping',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Shopping')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Karaoke')) {
                                _model.removeFromSelectedText('Karaoke');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Karaoke');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Karaoke')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(),
                                          'Karaoke')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.microphoneAlt,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Karaoke')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Karaoke',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Karaoke')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Yoga')) {
                                _model.removeFromSelectedText('Yoga');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Yoga');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Yoga')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(), 'Yoga')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.soap,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Yoga')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Yoga',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Yoga')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Cooking')) {
                                _model.removeFromSelectedText('Cooking');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Cooking');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Cooking')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(),
                                          'Cooking')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.itchIo,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Cooking')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Cooking',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Cooking')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Tennis')) {
                                _model.removeFromSelectedText('Tennis');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Tennis');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Tennis')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(),
                                          'Tennis')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.tableTennis,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Tennis')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Tennis',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Tennis')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Run')) {
                                _model.removeFromSelectedText('Run');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Run');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Run')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(), 'Run')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.running,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Run')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Run',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Run')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Swimming')) {
                                _model.removeFromSelectedText('Swimming');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Swimming');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(),
                                        'Swimming')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(),
                                          'Swimming')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.swimmer,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Swimming')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Swimming',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Swimming')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Art')) {
                                _model.removeFromSelectedText('Art');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Art');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Art')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(), 'Art')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.palette,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Art')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Art',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Art')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Traveling')) {
                                _model.removeFromSelectedText('Traveling');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Traveling');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(),
                                        'Traveling')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(),
                                          'Traveling')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.train,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Traveling')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Traveling',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Traveling')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Extreme')) {
                                _model.removeFromSelectedText('Extreme');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Extreme');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Extreme')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(),
                                          'Extreme')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.parachuteBox,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Extreme')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Extreme',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Extreme')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Music')) {
                                _model.removeFromSelectedText('Music');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Music');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Music')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(), 'Music')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.music,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Music')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Music',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Music')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(), 'Drink')) {
                                _model.removeFromSelectedText('Drink');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Drink');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Drink')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(), 'Drink')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.glassCheers,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Drink')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Drink',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Drink')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (functions.checkTextExistInList(
                                  _model.selectedText.toList(),
                                  'Video Games')) {
                                _model.removeFromSelectedText('Games');
                                safeSetState(() {});
                                return;
                              } else {
                                _model.addToSelectedText('Video Games');
                                safeSetState(() {});
                                return;
                              }
                            },
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: functions.checkTextExistInList(
                                        _model.selectedText.toList(), 'Games')
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: functions.checkTextExistInList(
                                          _model.selectedText.toList(), 'Games')
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.gamepad,
                                      color: functions.checkTextExistInList(
                                              _model.selectedText.toList(),
                                              'Games')
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Games',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: functions
                                                    .checkTextExistInList(
                                                        _model.selectedText
                                                            .toList(),
                                                        'Games')
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    if (_model.selectedText.length > 4 ? true : false) {
                      context.pushNamed(
                        YourInterestsTwoWidget.routeName,
                        queryParameters: {
                          'isBackAllow': serializeParam(
                            true,
                            ParamType.bool,
                          ),
                          'interests': serializeParam(
                            functions.textListToTextConvert(
                                _model.selectedText.toList()),
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );

                      return;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Select A Minimum 5 Interests',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 3000),
                          backgroundColor: FlutterFlowTheme.of(context).warning,
                        ),
                      );
                      return;
                    }
                  },
                  text: 'Continue',
                  options: FFButtonOptions(
                    height: 55.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  showLoadingIndicator: false,
                ),
              ].divide(SizedBox(height: 15.0)),
            ),
          ),
        ),
      ),
    );
  }
}
