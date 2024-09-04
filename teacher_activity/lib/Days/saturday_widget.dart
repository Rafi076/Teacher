import 'package:go_router/go_router.dart';

import '../flutter_flow/flutter_flow_model.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

import 'saturday_model.dart';
export 'saturday_model.dart';

class SaturdayWidget extends StatefulWidget {
  const SaturdayWidget({super.key});

  @override
  State<SaturdayWidget> createState() => _SaturdayWidgetState();
}

class _SaturdayWidgetState extends State<SaturdayWidget> {
  late SaturdayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaturdayModel());
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
      floatingActionButton: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
        child: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: Color(0xFF246481),
          elevation: 8,
          child: Icon(Icons.add, color: Colors.white,size: 24,),
        ),
      ),
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
                'Saturday',
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
    );
  }
}
