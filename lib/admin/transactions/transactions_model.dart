import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transactions_widget.dart' show TransactionsWidget;
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionsModel extends FlutterFlowModel<TransactionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  late List<Map<String, dynamic>> transactions;
  late FlutterFlowDataTableController<Map<String, dynamic>> paginatedDataTableController;

  TransactionsModel() {
    transactions = [];
    paginatedDataTableController = FlutterFlowDataTableController<Map<String, dynamic>>();
  }

  @override
  void initState(BuildContext context) {
    fetchTransactions();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  // Method to fetch transactions from Firestore
  Future<void> fetchTransactions() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('Transactions').get();
      transactions = snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print("Error fetching transactions: $e");
    }
  }
}
