
// recently writed 
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teachers_activity/flutter_flow/flutter_flow_icon_button.dart';
import 'package:teachers_activity/flutter_flow/flutter_flow_model.dart';
import 'package:teachers_activity/flutter_flow/flutter_flow_theme.dart';


import 'friday_model.dart';
export 'friday_model.dart';

class FridayWidget extends StatefulWidget {
  const FridayWidget({super.key});

  @override
  State<FridayWidget> createState() => _FridayWidgetState();
}

class _FridayWidgetState extends State<FridayWidget> {
  late FridayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FridayModel());
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
              icon: const Icon(
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
                'Friday',
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
        // Your existing body content goes here
      ),
      floatingActionButton: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
        child: FloatingActionButton(
          onPressed: () {
            // Your button action here
          },
          backgroundColor: Color(0xFF246481),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}



