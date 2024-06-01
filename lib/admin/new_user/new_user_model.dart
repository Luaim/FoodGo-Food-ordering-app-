import '/flutter_flow/flutter_flow_util.dart';
import 'new_user_widget.dart' show NewUserWidget;
import 'package:flutter/material.dart';

class NewUserModel extends FlutterFlowModel<NewUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
