import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'notification_check_page_model.dart';
export 'notification_check_page_model.dart';

class NotificationCheckPageWidget extends StatefulWidget {
  const NotificationCheckPageWidget({super.key});

  @override
  State<NotificationCheckPageWidget> createState() => _NotificationCheckPageWidgetState();
}

class _NotificationCheckPageWidgetState extends State<NotificationCheckPageWidget> {
  late NotificationCheckPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = NotificationCheckPageModel(); // Directly instantiate the model

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Add initialization code here if needed
    });
  }

  @override
  void dispose() {
    _model.dispose(); // Ensure model cleanup
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFCCF3EE),
        appBar: AppBar(
          backgroundColor: Color(0xFF246481),
          automaticallyImplyLeading: false,
          leading: Opacity(
            opacity: 0.6,
            child: FlutterFlowIconButton(
              borderColor: Color(0xFF246481),
              borderRadius: 15,
              fillColor: Color(0xFF246481),
              icon: Icon(
                Icons.keyboard_backspace,
                color: Color(0xFFCCF2F4),
                size: 24,
              ),
              onPressed: () async {
                context.pushNamed('main');
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
              child: Text(
                'Notification',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.bodyText2.copyWith(
                  fontFamily: 'Roboto Mono',
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // Add your widgets here
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'No notifications at the moment.',
                  style: FlutterFlowTheme.bodyText1.copyWith(
                    fontFamily: 'Roboto Mono',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              // Add more widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
