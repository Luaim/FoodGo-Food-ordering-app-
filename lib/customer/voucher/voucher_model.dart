import '/flutter_flow/flutter_flow_util.dart';
import 'voucher_widget.dart' show VoucherWidget;
import 'package:flutter/material.dart';

class VoucherModel extends FlutterFlowModel<VoucherWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
