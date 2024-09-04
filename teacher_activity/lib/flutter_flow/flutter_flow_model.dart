import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class FlutterFlowModel<T extends StatefulWidget> extends ChangeNotifier {
  // Called when the model is initialized.
  @mustCallSuper
  void initState(BuildContext context) {
    // Common initialization logic for all models
  }

  // Called when the model is disposed.
  @mustCallSuper
  void dispose() {
    super.dispose();
  
    // Common disposal logic for all models
  }
}

// Utility function to create a model instance
T createModel<T extends ChangeNotifier>(
  BuildContext context,
  T Function() create,
) {
  return Provider.of<T>(context, listen: false);
}
