import 'package:go_router/go_router.dart';
import '../flutter_flow/flutter_flow_model.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'monday_model.dart';
export 'monday_model.dart';

class MondayWidget extends StatefulWidget {
  const MondayWidget({super.key});

  @override
  State<MondayWidget> createState() => _MondayWidgetState();
}

class _MondayWidgetState extends State<MondayWidget> {
  late MondayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MondayModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFCCF3EE),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
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
                color: Color(0xFFC3F8F8),
                size: 20,
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
                'Monday',
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
      ),
      body: Center(
        // Add your main content here
        child: Text('Monday Content Goes Here'),
      ),
    );
  }
}
