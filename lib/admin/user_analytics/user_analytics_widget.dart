import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:mae1/admin/admin_profile/admin_profile_widget.dart';
import 'package:provider/provider.dart';
import 'user_analytics_model.dart';
export 'user_analytics_model.dart';

class UserAnalyticsWidget extends StatefulWidget {
  const UserAnalyticsWidget({Key? key}) : super(key: key);

  @override
  _UserAnalyticsWidgetState createState() => _UserAnalyticsWidgetState();
}

class _UserAnalyticsWidgetState extends State<UserAnalyticsWidget> {
  late UserAnalyticsModel _model;
  late UserAnalyticsModel _userAnalyticsModel;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserAnalyticsModel());
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
              Text(
                FFLocalizations.of(context).getText(
                  'kbc74nxl' /* Logout */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 30.0,
                      letterSpacing: 0.0,
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
                      onTap: () async {
                        context.pushNamed('HomePage');
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'c5du5zl2' /* Home Page */,
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
                      onTap: () async {
                        context.pushNamed('Transactions');
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'mkaxh3r4' /* Transactions */,
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
                      onTap: () async {
                        context.pushNamed('Inventories');
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '7tcldqdp' /* Inventories */,
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
                      onTap: () async {
                        context.pushNamed('UserAnalytics');
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ybbut8hr' /* Users */,
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
                      onTap: () async {
                        context.pushNamed('chat_2_main');
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'dwnutcva' /* Complaints */,
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
                      onTap: () async {
                        context.pushNamed('OrderManagement');
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '2skppsx5' /* Orders Management */,
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
              Container(
                width: 1353.0,
                height: 900.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 985.0,
                      height: 230.0,
                      child: FlutterFlowLineChart(
                        data: [
                          FFLineChartData(
                            xData: List.generate(
                                random_data.randomInteger(5, 5),
                                (index) => random_data.randomDate()),
                            yData: List.generate(
                                random_data.randomInteger(5, 5),
                                (index) => random_data.randomColor()),
                            settings: LineChartBarData(
                              color: FlutterFlowTheme.of(context).primary,
                              barWidth: 2.0,
                              isCurved: true,
                              dotData: FlDotData(show: false),
                              belowBarData: BarAreaData(
                                show: true,
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                          )
                        ],
                        chartStylingInfo: ChartStylingInfo(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          showBorder: false,
                        ),
                        axisBounds: const AxisBounds(),
                        xAxisLabelInfo: const AxisLabelInfo(
                          reservedSize: 32.0,
                        ),
                        yAxisLabelInfo: const AxisLabelInfo(
                          reservedSize: 40.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final userAnalytics = List.generate(
                              random_data.randomInteger(5, 5),
                              (index) => random_data.randomString(
                                    0,
                                    0,
                                    true,
                                    true,
                                    false,
                                  )).toList();
                          return FlutterFlowDataTable<String>(
                            controller: _model.paginatedDataTableController,
                            data: userAnalytics,
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
                                      'ee8hve1u' /* Edit Header 1 */,
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
                                      'm7664by8' /* Edit Header 2 */,
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
                                      '8alomqqd' /* Edit Header 3 */,
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
                                      '8alomqqd' /* Edit Header 4 */,
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
                            dataRowBuilder: (userAnalyticsItem,
                                    userAnalyticsIndex,
                                    selected,
                                    onSelectChanged) =>
                                DataRow(
                              color: MaterialStateProperty.all(
                                userAnalyticsIndex % 2 == 0
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .primaryBackground,
                              ),
                              cells: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '2wtdmc95' /* Edit Column 1 */,
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
                                    'l9449u4p' /* Edit Column 2 */,
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
                                    'wg8n1jrq' /* Edit Column 3 */,
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
                                    'wg8n1jrq' /* Edit Column 4 */,
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
                            headingRowColor:
                                FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(8.0),
                            addHorizontalDivider: true,
                            addTopAndBottomDivider: false,
                            hideDefaultHorizontalDivider: true,
                            horizontalDividerColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            horizontalDividerThickness: 1.0,
                            addVerticalDivider: false,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
