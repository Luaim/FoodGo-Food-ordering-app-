import '/flutter_flow/flutter_flow_util.dart';
import 'saved_widget.dart' show SavedWidget;
import 'package:flutter/material.dart';

class SavedModel extends FlutterFlowModel<SavedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
