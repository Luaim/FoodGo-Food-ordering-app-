import '/flutter_flow/flutter_flow_util.dart';
import 'view_cart_widget.dart' show ViewCartWidget;
import 'package:flutter/material.dart';

class ViewCartModel extends FlutterFlowModel<ViewCartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
