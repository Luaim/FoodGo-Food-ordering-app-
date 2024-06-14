import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_management_widget.dart' show OrderManagementWidget;
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderManagementModel extends FlutterFlowModel<OrderManagementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();

  // List to store inventory data
  List<Map<String, dynamic>> orders = [];

  @override
  void initState(BuildContext context) {
    fetchOrders();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  // Method to fetch orders from Firestore
  Future<void> fetchOrders() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      QuerySnapshot snapshot = await firestore.collection('Orders').get();
      orders = snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        if (data['order_time'] != null) {
          data['order_time'] = (data['order_time'] as Timestamp).toDate().toString();
        }
        return data;
      }).toList();
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
