
// after solving maximum issue 


import 'main_widget.dart' show MainWidget;
import 'package:flutter/material.dart';

// Extending ChangeNotifier if FlutterFlowModel is not available
class MainModel extends ChangeNotifier {
  /// State fields for stateful widgets in this page.
  final unfocusNode = FocusNode();

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;

  // Validator function for the TextField
  String? Function(BuildContext, String?)? textControllerValidator;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  /// Initialize the state.
  void initState(BuildContext context) {
    // Initialize the calendar selected day range.
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );

    // Initialize the textControllerValidator with a sample validation function.
    textControllerValidator = (BuildContext context, String? value) {
      if (value == null || value.isEmpty) {
        return 'This field cannot be empty';
      }
      // Add other validation logic if needed
      return null;
    };

    // Initialize the TextEditingController and FocusNode if not already initialized.
    textController ??= TextEditingController();
    textFieldFocusNode ??= FocusNode();
  }

  /// Clean up the state.
  void dispose() {
    // Dispose of the textFieldFocusNode and textController.
    textFieldFocusNode?.dispose();
    textController?.dispose();
    super.dispose();
  }
}

// Extension methods for DateTime to get startOfDay and endOfDay
extension DateTimeExtensions on DateTime {
  DateTime get startOfDay {
    return DateTime(year, month, day);
  }

  DateTime get endOfDay {
    return DateTime(year, month, day, 23, 59, 59, 999);
  }
}

