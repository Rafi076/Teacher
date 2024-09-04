// import 'package:go_router/go_router.dart';
// import '/flutter_flow/flutter_flow_calendar.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'main_model.dart';
// export 'main_model.dart';

// class MainWidget extends StatefulWidget {
//   const MainWidget({super.key});

//   @override
//   State<MainWidget> createState() => _MainWidgetState();
// }

// class _MainWidgetState extends State<MainWidget> {
//   late MainModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = MainModel(); // Create the model instance

//     // Initialize the model fields if necessary
//     _model.textController ??= TextEditingController();
//     _model.textFieldFocusNode ??= FocusNode();
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: Color(0xFFCCF3EE),
//         endDrawer: Container(
//           width: 200,
//           child: Drawer(
//             elevation: 16,
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
//                     child: Container(
//                       width: 340,
//                       height: 150,
//                       decoration: BoxDecoration(
//                         color: Color(0xFF165F7C),
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 40,
//                             color: Color(0x33000000),
//                             offset: Offset(
//                               0,
//                               2,
//                             ),
//                           )
//                         ],
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(30),
//                           bottomRight: Radius.circular(30),
//                           topLeft: Radius.circular(0),
//                           topRight: Radius.circular(0),
//                         ),
//                       ),
//                       child: Stack(
//                         children: [
//                           Align(
//                             alignment: AlignmentDirectional(0, 0),
//                             child: Icon(
//                               Icons.person_sharp,
//                               color: FlutterFlowTheme.primaryColor,
//                               size: 70,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.2,
//                   child: Divider(
//                     thickness: 1,
//                     color: Color(0xFF050404),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.person_outlined,
//                       ),
//                       title: Text(
//                         'Profile',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: Colors.white,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.class_,
//                       ),
//                       title: Text(
//                         'Clasese',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme
//                           .secondaryColor, // Use static color here
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.meeting_room_rounded,
//                       ),
//                       title: Text(
//                         'Empty Room',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme.secondaryColor,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.search_rounded,
//                       ),
//                       title: Text(
//                         'Search',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme.secondaryColor,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.bookmark_add_outlined,
//                       ),
//                       title: Text(
//                         'Book Classroom',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme.secondaryColor,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.block,
//                       ),
//                       title: Text(
//                         'Booked Room',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme.secondaryColor,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.transcribe_sharp,
//                       ),
//                       title: Text(
//                         'CR List',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme.secondaryColor,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.2,
//                   child: Divider(
//                     thickness: 1,
//                     color: Color(0xFF0B0B0C),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: FaIcon(
//                         FontAwesomeIcons.java,
//                       ),
//                       title: Text(
//                         'About',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme.secondaryColor,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.report_outlined,
//                       ),
//                       title: Text(
//                         'Report',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme.secondaryColor,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.9,
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.logout_rounded,
//                       ),
//                       title: Text(
//                         'Logout',
//                         style: FlutterFlowTheme.bodyText2.copyWith(
//                           fontFamily: 'Readex Pro',
//                           letterSpacing: 0,
//                         ),
//                       ),
//                       tileColor: FlutterFlowTheme.secondaryColor,
//                       dense: false,
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         appBar: AppBar(
//           backgroundColor: Color(0xFF246481),
//           automaticallyImplyLeading: false,
//           leading: Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
//             child: InkWell(
//               splashColor: Colors.transparent,
//               focusColor: Colors.transparent,
//               hoverColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               onTap: () async {
//                 context.pushNamed('notificationCheckPage');
//               },
//               child: Icon(
//                 Icons.notifications,
//                 color: Color(0xFFE5E9EF),
//                 size: 25,
//               ),
//             ),
//           ),
//           title: Align(
//             alignment: AlignmentDirectional(0, 0),
//             child: Text(
//               'Activities',
//               textAlign: TextAlign.center,
//               style: FlutterFlowTheme.bodyText2.copyWith(
//                 // Use static style here
//                 fontFamily: 'Roboto Mono',
//                 color: Colors.white,
//                 fontSize: 22,
//                 letterSpacing: 0,
//                 fontWeight: FontWeight.w800,
//               ),
//             ),
//           ),
//           actions: [],
//           centerTitle: true,
//           elevation: 2,
//         ),
//         body: SafeArea(
//           top: true,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(8, 5, 8, 5),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
//                         child: FFButtonWidget(
//                           onPressed: () async {
//                             context.pushNamed('saturday');
//                           },
//                           text: 'SAT',
//                           options: FFButtonOptions(
//                             width: 100,
//                             height: 40,
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                             color: FlutterFlowTheme.primaryColor,
//                             textStyle: FlutterFlowTheme.titleSmall.copyWith(
//                               fontFamily: 'Readex Pro',
//                               color: Color(0xFF181717),
//                               letterSpacing: 0,
//                             ),
//                             elevation: 3,
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(22),
//                             iconPadding: EdgeInsetsDirectional.zero,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
//                         child: FFButtonWidget(
//                           onPressed: () async {
//                             context.pushNamed('sunday');
//                           },
//                           text: 'SUN',
//                           options: FFButtonOptions(
//                             width: 100,
//                             height: 40,
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                             color: FlutterFlowTheme.primaryColor,
//                             textStyle: FlutterFlowTheme.titleSmall.copyWith(
//                               fontFamily: 'Readex Pro',
//                               color: Color(0xFF181717),
//                               letterSpacing: 0,
//                             ),
//                             elevation: 3,
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(22),
//                             iconPadding: EdgeInsetsDirectional
//                                 .zero, // Provide a default value
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
//                         child: FFButtonWidget(
//                           onPressed: () async {
//                             context.pushNamed('monday');
//                           },
//                           text: 'MON',
//                           options: FFButtonOptions(
//                             width: 100,
//                             height: 40,
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                             color: Color(0xFF246481),
//                             textStyle: FlutterFlowTheme.titleSmall.copyWith(
//                               fontFamily: 'Readex Pro',
//                               color: Color(0xFF181717),
//                               letterSpacing: 0,
//                             ),
//                             elevation: 3,
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(22),
//                             iconPadding: EdgeInsetsDirectional
//                                 .zero, // Provide a default value,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
//                         child: FFButtonWidget(
//                           onPressed: () async {
//                             context.pushNamed('tuesday');
//                           },
//                           text: 'TUE',
//                           options: FFButtonOptions(
//                             width: 100,
//                             height: 40,
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                             color: Color(0xFF246481),
//                             textStyle: FlutterFlowTheme.titleSmall.copyWith(
//                               fontFamily: 'Readex Pro',
//                               color: Color(0xFF181717),
//                               letterSpacing: 0,
//                             ),
//                             elevation: 3,
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(22),
//                             iconPadding: EdgeInsetsDirectional
//                                 .zero, // Provide a default value,,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
//                         child: FFButtonWidget(
//                           onPressed: () async {
//                             context.pushNamed('wednesday');
//                           },
//                           text: 'WED',
//                           options: FFButtonOptions(
//                             width: 100,
//                             height: 40,
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                             color: Color(0xFF246481),
//                             textStyle: FlutterFlowTheme.titleSmall.copyWith(
//                               fontFamily: 'Readex Pro',
//                               color: Color(0xFF181717),
//                               letterSpacing: 0,
//                             ),
//                             elevation: 3,
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(22),
//                             iconPadding: EdgeInsetsDirectional
//                                 .zero, // Provide a default value,,,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
//                         child: FFButtonWidget(
//                           onPressed: () async {
//                             context.pushNamed('thuesday');
//                           },
//                           text: 'THU',
//                           options: FFButtonOptions(
//                             width: 100,
//                             height: 40,
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                             color: Color(0xFF246481),
//                             textStyle: FlutterFlowTheme.titleSmall.copyWith(
//                               fontFamily: 'Readex Pro',
//                               color: Color(0xFF181717),
//                               letterSpacing: 0,
//                             ),
//                             elevation: 3,
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(22),
//                             iconPadding: EdgeInsetsDirectional
//                                 .zero, // Provide a default value,,,,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
//                         child: FFButtonWidget(
//                           onPressed: () async {},
//                           text: 'FRI',
//                           options: FFButtonOptions(
//                             width: 100,
//                             height: 40,
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                             color: Color(0xFF246481),
//                             textStyle: FlutterFlowTheme.titleSmall.copyWith(
//                               fontFamily: 'Readex Pro',
//                               color: Color(0xFF181717),
//                               letterSpacing: 0,
//                             ),
//                             elevation: 3,
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(22),
//                             iconPadding: EdgeInsetsDirectional
//                                 .zero, // Provide a default value,,,,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
//                 child: Container(
//                   width: 300,
//                   child: TextFormField(
//                     controller: _model.textController,
//                     focusNode: _model.textFieldFocusNode,
//                     autofocus: false,
//                     obscureText: false,
//                     decoration: InputDecoration(
//                       labelText: 'Search here...',
//                       hintStyle: FlutterFlowTheme.bodyText2.copyWith(
//                         fontFamily: 'Readex Pro',
//                         color: FlutterFlowTheme.primaryText,
//                         letterSpacing: 0,
//                       ),
//                       enabledBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0xFF2C2929),
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                       focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0xFF45454F),
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                       errorBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.errorColor,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                       focusedErrorBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.errorColor,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
//                       suffixIcon: Icon(
//                         Icons.search_sharp,
//                         size: 25,
//                       ),
//                     ),
//                     style: FlutterFlowTheme.bodyText1.copyWith(
//                       fontFamily: 'Readex Pro',
//                       color: Colors.black,
//                       letterSpacing: 0,
//                     ),
//                     textAlign: TextAlign.start,
//                     validator: _model.textControllerValidator != null
//                         ? (value) =>
//                             _model.textControllerValidator!(context, value)
//                         : null,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(10, 15, 45, 0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
//                       child: Text(
//                         'Date',
//                         textAlign: TextAlign.start,
//                         style: FlutterFlowTheme.bodyText1.copyWith(
//                           fontFamily: 'Readex Pro',
//                           color: Color(0xFF050404),
//                           fontSize: 16,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                 child: Container(
//                   width: 360,
//                   height: 400,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF9FC8D0),
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 15,
//                         color: FlutterFlowTheme.secondaryText,
//                         offset: Offset(
//                           0,
//                           2,
//                         ),
//                       )
//                     ],
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(30),
//                       bottomRight: Radius.circular(30),
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     ),
//                     shape: BoxShape.rectangle,
//                   ),
//                   child: FlutterFlowCalendar(
//                     color: Color(0xFF353D3E),
//                     iconColor: Colors.black,
//                     weekFormat: false,
//                     weekStartsMonday: false,
//                     rowHeight: 60,
//                     onChange: (DateTimeRange? newSelectedDate) async {
//                       if (_model.calendarSelectedDay == newSelectedDate) {
//                         return;
//                       }
//                       _model.calendarSelectedDay = newSelectedDate;

//                       context.pushNamed('selectedDate');

//                       setState(() {});
//                     },
//                     titleStyle: FlutterFlowTheme.headline3.copyWith(
//                       fontFamily: 'Outfit',
//                       letterSpacing: 0,
//                     ),
//                     dayOfWeekStyle: FlutterFlowTheme.bodyText1.copyWith(
//                       fontFamily: 'Readex Pro',
//                       letterSpacing: 0,
//                     ),
//                     dateStyle: FlutterFlowTheme.bodyText1.copyWith(
//                       fontFamily: 'Readex Pro',
//                       letterSpacing: 0,
//                     ),
//                     selectedDateStyle: FlutterFlowTheme.bodyText2.copyWith(
//                       fontFamily: 'Readex Pro',
//                       color: Color(0xFFDCE1E4),
//                       letterSpacing: 0,
//                     ),
//                     inactiveDateStyle: FlutterFlowTheme.bodyText2.copyWith(
//                       fontFamily: 'Readex Pro',
//                       letterSpacing: 0,
//                     ),
//                     onDateSelected: (DateTime) {},
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

































// recent writed

import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider package
import 'package:go_router/go_router.dart';
import 'package:teachers_activity/Days/friday_model.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'main_model.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  late MainModel _model;

  @override
  void initState() {
    super.initState();
    _model = MainModel();
    _model.initState(context);
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => FridayModel(), // Provide your model here
      child: Scaffold(
        drawer: Drawer(
          elevation: 16,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                   Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                          'Profile',
                          style: FlutterFlowTheme.bodyText2.copyWith(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                        ),
                        tileColor: FlutterFlowTheme.secondaryColor,
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                   Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                      child: ListTile(
                        leading: Icon(Icons.star),
                        title: Text(
                          'About',
                          style: FlutterFlowTheme.bodyText2.copyWith(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                        ),
                        tileColor: FlutterFlowTheme.secondaryColor,
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                      child: ListTile(
                        leading: Icon(Icons.search_rounded),
                        title: Text(
                          'Search',
                          style: FlutterFlowTheme.bodyText2.copyWith(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                        ),
                        tileColor: FlutterFlowTheme.secondaryColor,
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  // ...other ListTiles with similar structure...
                  Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                      child: ListTile(
                        leading: Icon(Icons.logout_rounded),
                        title: Text(
                          'Logout',
                          style: FlutterFlowTheme.bodyText2.copyWith(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                        ),
                        tileColor: FlutterFlowTheme.secondaryColor,
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF246481),
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('notificationCheckPage');
              },
              child: Icon(
                Icons.notifications,
                color: Color(0xFFE5E9EF),
                size: 25,
              ),
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'Activities',
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
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 5, 8, 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...['SAT', 'SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI'].map((day) {
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(day.toLowerCase());
                            },
                            text: day,
                            options: FFButtonOptions(
                              width: 100,
                              height: 40,
                              padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              color: Color(0xFF246481),
                              textStyle: FlutterFlowTheme.titleSmall.copyWith(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF181717),
                                letterSpacing: 0,
                              ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(22),
                              iconPadding: EdgeInsetsDirectional.zero,
                            ),
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Search here...',
                      hintStyle: FlutterFlowTheme.bodyText2.copyWith(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.primaryText,
                        letterSpacing: 0,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF2C2929),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF45454F),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.errorColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.errorColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      suffixIcon: Icon(
                        Icons.search_sharp,
                        size: 25,
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1.copyWith(
                      fontFamily: 'Readex Pro',
                      color: Colors.black,
                      letterSpacing: 0,
                    ),
                    textAlign: TextAlign.start,
                    validator: _model.textControllerValidator != null
                        ? (value) => _model.textControllerValidator!(context, value)
                        : null,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 15, 45, 0),
                child: Text(
                  'Date',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.bodyText1.copyWith(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF050404),
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 360,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0xFF9FC8D0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        color: FlutterFlowTheme.secondaryText,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: FlutterFlowCalendar(
                    color: Color(0xFF353D3E),
                    iconColor: Colors.black,
                    weekFormat: false,
                    weekStartsMonday: false,
                    rowHeight: 60,
                    onChange: (DateTimeRange? newSelectedDate) async {
                      if (_model.calendarSelectedDay == newSelectedDate) {
                        return;
                      }
                      _model.calendarSelectedDay = newSelectedDate;
                      context.pushNamed('selectedDate');
                      setState(() {});
                    },
                    titleStyle: FlutterFlowTheme.headline3.copyWith(
                      fontFamily: 'Outfit',
                      letterSpacing: 0,
                    ),
                    dayOfWeekStyle: FlutterFlowTheme.bodyText1.copyWith(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                    dateStyle: FlutterFlowTheme.bodyText1.copyWith(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                    selectedDateStyle: FlutterFlowTheme.bodyText2.copyWith(
                      fontFamily: 'Readex Pro',
                      color: Color(0xFFDCE1E4),
                      letterSpacing: 0,
                    ),
                    inactiveDateStyle: FlutterFlowTheme.bodyText2.copyWith(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                    onDateSelected: (DateTime) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

