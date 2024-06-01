import '/flutter_flow/flutter_flow_util.dart';
import 'meal_customization_widget.dart' show MealCustomizationWidget;
import 'package:flutter/material.dart';

class MealCustomizationModel extends FlutterFlowModel<MealCustomizationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for customize widget.
  FocusNode? customizeFocusNode;
  TextEditingController? customizeTextController;
  String? Function(BuildContext, String?)? customizeTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    customizeFocusNode?.dispose();
    customizeTextController?.dispose();
  }
}
