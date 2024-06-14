import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inventories_widget.dart' show InventoriesWidget;
import 'package:flutter/material.dart';
import 'package:mae1/common/login_page/user_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InventoriesModel extends FlutterFlowModel<InventoriesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();

  // List to store inventory data
  List<Map<String, dynamic>> inventories = [];

  @override
  void initState(BuildContext context) {
    fetchInventories();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  // Method to fetch inventories from Firestore
  Future<void> fetchInventories() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      QuerySnapshot snapshot = await firestore.collection('Inventories').get();
      inventories = snapshot.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
