import '/flutter_flow/flutter_flow_util.dart';
import 'admin_profile_widget.dart' show AdminProfileWidget;
import 'package:flutter/material.dart';

class AdminProfileModel extends FlutterFlowModel<AdminProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
