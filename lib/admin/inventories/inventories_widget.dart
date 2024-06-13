import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:mae1/admin/admin_profile/admin_profile_widget.dart';
import 'package:mae1/common/login_page/login_page_widget.dart';
import 'package:mae1/admin/home_page/home_page_widget.dart';
import 'package:mae1/admin/new_user/new_user_widget.dart';
import 'package:mae1/admin/order_management/order_management_widget.dart';
import 'package:mae1/admin/transactions/transactions_widget.dart';
import 'package:mae1/admin/user_analytics/user_analytics_widget.dart';
import 'package:mae1/complaint_chat_flow/chat_2_main/chat2_main_widget.dart';
import 'inventories_model.dart';
export 'inventories_model.dart';

class InventoriesWidget extends StatefulWidget {
  const InventoriesWidget({super.key});

  @override
  _InventoriesWidgetState createState() => _InventoriesWidgetState();
}

class _InventoriesWidgetState extends State<InventoriesWidget> {
  late InventoriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InventoriesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            actions: [
              InkWell(
                onTap: () {
                  // Navigate to the login page
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPageWidget()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text(
                  FFLocalizations.of(context).getText(
                    '5qspjeoz' /* Logout */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigate to the admin profile page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminProfileWidget()),
                  );
                },
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/761/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 100.0,
                height: 823.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        // Navigate to the home page
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePageWidget()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '5zom372h' /* Home Page */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        // Navigate to the transactions page
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => TransactionsWidget()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'pgalmrl9' /* Transactions */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '28ij2480' /* Inventories */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        // Navigate to the user analytics page
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => UserAnalyticsWidget()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'xeiah9eo' /* Users */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        // Navigate to the complaint chat flow
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Chat2MainWidget()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '2j0iwltv' /* Complaints */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        // Navigate to the order management page
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => OrderManagementWidget()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'em7cj0dj' /* Orders Management */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final inventoryTable = List.generate(
                        random_data.randomInteger(5, 5),
                        (index) => random_data.randomString(
                              0,
                              0,
                              true,
                              true,
                              true,
                            )).toList();
                    return FlutterFlowDataTable<String>(
                      controller: _model.paginatedDataTableController,
                      data: inventoryTable,
                      numRows: valueOrDefault<int>(
                        random_data.randomInteger(1, 10),
                        5,
                      ),
                      columnsBuilder: (onSortChanged) => [
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'im5bw7cj' /* Edit Header 1 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'clma2die' /* Edit Header 2 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'rlnbs4eg' /* Edit Header 3 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                      dataRowBuilder: (inventoryTableItem, inventoryTableIndex,
                              selected, onSelectChanged) =>
                          DataRow(
                        color: MaterialStateProperty.all(
                          inventoryTableIndex % 2 == 0
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        cells: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'xp1umc21' /* Edit Column 1 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'jyua1z5x' /* Edit Column 2 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'vzfs5e2c' /* Edit Column 3 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].map((c) => DataCell(c)).toList(),
                      ),
                      paginated: true,
                      selectable: false,
                      hidePaginator: false,
                      showFirstLastButtons: false,
                      headingRowHeight: 56.0,
                      dataRowHeight: 48.0,
                      columnSpacing: 20.0,
                      headingRowColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: BorderRadius.circular(8.0),
                      addHorizontalDivider: true,
                      addTopAndBottomDivider: false,
                      hideDefaultHorizontalDivider: true,
                      horizontalDividerColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      horizontalDividerThickness: 1.0,
                      addVerticalDivider: false,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
