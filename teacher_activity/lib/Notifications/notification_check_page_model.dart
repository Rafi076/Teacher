import 'notification_check_page_widget.dart' show NotificationCheckPageWidget;
import 'package:flutter/material.dart';

class NotificationCheckPageModel extends ChangeNotifier {
  /// Add your model properties and methods here if needed.

  final unfocusNode = FocusNode();

  @override
  void dispose() {
    unfocusNode.dispose();
    super.dispose();
  }
}
