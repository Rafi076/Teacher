import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import the provider package
import 'package:teachers_activity/Days/friday_model.dart'; // Import your models or any other files needed
import 'package:teachers_activity/Days/saturday_model.dart';
import 'package:teachers_activity/Days/sunday_model.dart';
import 'package:teachers_activity/Days/monday_model.dart';
import 'package:teachers_activity/Days/tuesday_model.dart';
import 'package:teachers_activity/Days/wednesday_model.dart';
import 'package:teachers_activity/Days/thursday_model.dart';
import 'package:teachers_activity/main_widget.dart'; // Import the main widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FridayModel()),
        ChangeNotifierProvider(create: (_) => SaturdayModel()),
        ChangeNotifierProvider(create: (_) => SundayModel()),
        ChangeNotifierProvider(create: (_) => MondayModel()),
        ChangeNotifierProvider(create: (_) => TuesdayModel()),
        ChangeNotifierProvider(
            create: (_) => WednesdayModel()), // Provide WednesdayModel
        ChangeNotifierProvider(
            create: (_) => ThursdayModel()), // Provide ThursdayModel
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Teacher Activity', // Set your app's title
        theme: ThemeData(
          primarySwatch: Colors.blue, // Set your theme
        ),
        home: MainWidget(), // Set the home to be your MainWidget
      ),
    );
  }
}
