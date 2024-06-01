import '/flutter_flow/flutter_flow_util.dart';
import 'reorder_widget.dart' show ReorderWidget;
import 'package:flutter/material.dart';

class ReorderModel extends FlutterFlowModel<ReorderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
