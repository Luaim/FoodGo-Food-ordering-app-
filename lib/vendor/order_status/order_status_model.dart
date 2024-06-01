import '/flutter_flow/flutter_flow_util.dart';
import 'order_status_widget.dart' show OrderStatusWidget;
import 'package:flutter/material.dart';

class OrderStatusModel extends FlutterFlowModel<OrderStatusWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
