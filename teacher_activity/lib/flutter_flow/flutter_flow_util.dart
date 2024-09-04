import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class FlutterFlowUtil {
  // Utility method for date formatting
  static String formatDate(DateTime date, {String format = 'yMMMd'}) {
    return DateFormat(format).format(date);
  }

  // Utility method for time formatting
  static String formatTime(TimeOfDay time) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat.jm().format(dt);
  }

  // Navigate to a new page with a fade transition
  static void navigateWithFade(BuildContext context, Widget page) {
    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    ));
  }

  // Utility for showing a snackbar message
  static void showSnackbar(BuildContext context, String message, {int duration = 3}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: duration),
      ),
    );
  }

  T createModel<T>(BuildContext context, T Function() modelBuilder) {
  return Provider.of<T>(context, listen: false) ?? modelBuilder();
}

  // Additional utility functions can be added here as needed
}
