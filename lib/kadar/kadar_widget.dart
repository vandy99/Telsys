import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'kadar_model.dart';
export 'kadar_model.dart';

class KadarWidget extends StatefulWidget {
  const KadarWidget({super.key});

  @override
  _KadarWidgetState createState() => _KadarWidgetState();
}

class _KadarWidgetState extends State<KadarWidget> {
  late KadarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KadarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: StreamBuilder<List<TelkesRecord>>(
            stream: queryTelkesRecord(
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitChasingDots(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<TelkesRecord> iconTelkesRecordList = snapshot.data!;
              final iconTelkesRecord = iconTelkesRecordList.isNotEmpty
                  ? iconTelkesRecordList.first
                  : null;
              return InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await iconTelkesRecord!.reference.update({
                    ...mapToFirestore(
                      {
                        'Listkadar': FieldValue.arrayUnion([
                          getListkadarFirestoreData(
                            createListkadarStruct(
                              date:
                                  dateTimeFormat('d/M/y', getCurrentTimestamp),
                              kadar: iconTelkesRecord.kadar.toString(),
                              clearUnsetFields: false,
                            ),
                            true,
                          )
                        ]),
                      },
                    ),
                  });
                },
                child: Icon(
                  Icons.save_rounded,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
              );
            },
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Kadar Oksigen',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                child: Container(
                  width: 360.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                      child: StreamBuilder<List<TelkesRecord>>(
                        stream: queryTelkesRecord(
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitChasingDots(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<TelkesRecord> progressBarTelkesRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final progressBarTelkesRecord =
                              progressBarTelkesRecordList.isNotEmpty
                                  ? progressBarTelkesRecordList.first
                                  : null;
                          return CircularPercentIndicator(
                            percent: valueOrDefault<double>(
                              functions.oksigen(progressBarTelkesRecord!.kadar),
                              0.0,
                            ),
                            radius: 100.0,
                            lineWidth: 20.0,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor: valueOrDefault<Color>(
                              () {
                                if (progressBarTelkesRecord
                                        .statusKadarOksigen ==
                                    'Tinggi') {
                                  return const Color(0xFFFF0000);
                                } else if (progressBarTelkesRecord
                                        .statusKadarOksigen ==
                                    'Normal') {
                                  return FlutterFlowTheme.of(context).primary;
                                } else if (progressBarTelkesRecord
                                        .statusKadarOksigen ==
                                    'Rendah') {
                                  return FlutterFlowTheme.of(context).warning;
                                } else {
                                  return FlutterFlowTheme.of(context).primary;
                                }
                              }(),
                              FlutterFlowTheme.of(context).primary,
                            ),
                            backgroundColor: const Color(0xFFE5E5E5),
                            center: Text(
                              valueOrDefault<String>(
                                '${valueOrDefault<String>(
                                  progressBarTelkesRecord.kadar.toString(),
                                  '0',
                                )} %',
                                '%',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 24.0,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: StreamBuilder<List<TelkesRecord>>(
                  stream: queryTelkesRecord(
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitChasingDots(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<TelkesRecord> containerTelkesRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final containerTelkesRecord =
                        containerTelkesRecordList.isNotEmpty
                            ? containerTelkesRecordList.first
                            : null;
                    return Container(
                      width: 360.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          () {
                            if (containerTelkesRecord?.statusKadarOksigen ==
                                'Tinggi') {
                              return const Color(0xFFFF0000);
                            } else if (containerTelkesRecord
                                    ?.statusKadarOksigen ==
                                'Normal') {
                              return FlutterFlowTheme.of(context).primary;
                            } else if (containerTelkesRecord
                                    ?.statusKadarOksigen ==
                                'Rendah') {
                              return FlutterFlowTheme.of(context).warning;
                            } else {
                              return FlutterFlowTheme.of(context).primary;
                            }
                          }(),
                          FlutterFlowTheme.of(context).primary,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.00, -1.00),
                              child: Text(
                                'Status :',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            StreamBuilder<List<TelkesRecord>>(
                              stream: queryTelkesRecord(
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitChasingDots(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<TelkesRecord> textTelkesRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final textTelkesRecord =
                                    textTelkesRecordList.isNotEmpty
                                        ? textTelkesRecordList.first
                                        : null;
                                return Text(
                                  valueOrDefault<String>(
                                    textTelkesRecord?.statusKadarOksigen,
                                    'Normal',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'Riwayat',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Container(
                    width: 360.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primary,
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          weekFormat: true,
                          weekStartsMonday: false,
                          rowHeight: 64.0,
                          onChange: (DateTimeRange? newSelectedDate) async {
                            _model.calendarSelectedDay = newSelectedDate;
                            setState(() {
                              FFAppState().Waktu = dateTimeFormat(
                                  'd/M/y', _model.calendarSelectedDay!.start);
                            });
                            setState(() {});
                          },
                          titleStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 16.0,
                              ),
                          dayOfWeekStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14.0,
                                  ),
                          dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                          selectedDateStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14.0,
                                  ),
                          inactiveDateStyle:
                              FlutterFlowTheme.of(context).labelMedium,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: StreamBuilder<List<TelkesRecord>>(
                              stream: queryTelkesRecord(
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitChasingDots(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<TelkesRecord> listViewTelkesRecordList =
                                    snapshot.data!;
                                final listViewTelkesRecord =
                                    listViewTelkesRecordList.isNotEmpty
                                        ? listViewTelkesRecordList.first
                                        : null;
                                return ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 1.0),
                                      child: Container(
                                        width: 100.0,
                                        height: 89.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              offset: const Offset(0.0, 1.0),
                                            )
                                          ],
                                        ),
                                        child: Builder(
                                          builder: (context) {
                                            final listkadar =
                                                listViewTelkesRecord?.listkadar
                                                        .where((e) =>
                                                            e.date ==
                                                            FFAppState().Waktu)
                                                        .toList()
                                                        .map((e) => e.kadar)
                                                        .toList()
                                                        .toList() ??
                                                    [];
                                            return SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    listkadar.length,
                                                    (listkadarIndex) {
                                                  final listkadarItem =
                                                      listkadar[listkadarIndex];
                                                  return Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.00, 0.00),
                                                    child: Text(
                                                      'Kadar Oksigen : $listkadarItem %',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  );
                                                }).divide(
                                                    const SizedBox(height: 5.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
