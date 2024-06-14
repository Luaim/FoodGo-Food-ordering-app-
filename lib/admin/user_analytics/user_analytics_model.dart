import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_analytics_widget.dart' show UserAnalyticsWidget;
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mae1/common/login_page/user_service.dart';

class UserAnalyticsModel extends FlutterFlowModel<UserAnalyticsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();

   // List to store user data
  List<Map<String, dynamic>> users = [];

  @override
  void initState(BuildContext context) {
    fetchUsers();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  // Method to fetch inventories from Firestore
  Future<void> fetchUsers() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      QuerySnapshot snapshot = await firestore.collection('Inventories').get();
      users = snapshot.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
