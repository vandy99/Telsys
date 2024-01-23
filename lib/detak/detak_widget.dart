import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'detak_model.dart';
export 'detak_model.dart';

class DetakWidget extends StatefulWidget {
  const DetakWidget({Key? key}) : super(key: key);

  @override
  _DetakWidgetState createState() => _DetakWidgetState();
}

class _DetakWidgetState extends State<DetakWidget> {
  late DetakModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetakModel());

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

    return StreamBuilder<TelkesRecord>(
      stream: TelkesRecord.getDocument(currentUserReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitChasingDots(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final detakTelkesRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            floatingActionButton: StreamBuilder<TelkesRecord>(
              stream: TelkesRecord.getDocument(currentUserReference!),
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
                final floatingActionButtonTelkesRecord = snapshot.data!;
                return FloatingActionButton(
                  onPressed: () async {
                    await floatingActionButtonTelkesRecord.reference.update({
                      ...mapToFirestore(
                        {
                          'Listdetak': FieldValue.arrayUnion([
                            getListdetakFirestoreData(
                              createListdetakStruct(
                                date: dateTimeFormat(
                                    'd/M/y', getCurrentTimestamp),
                                detak: floatingActionButtonTelkesRecord.detak
                                    .toString(),
                                clearUnsetFields: false,
                              ),
                              true,
                            )
                          ]),
                        },
                      ),
                    });
                  },
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  elevation: 8.0,
                  child: Icon(
                    Icons.save_rounded,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                );
              },
            ),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Detak Jantung',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                    child: Container(
                      width: 360.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 24.0),
                          child: StreamBuilder<TelkesRecord>(
                            stream:
                                TelkesRecord.getDocument(currentUserReference!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitChasingDots(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              final progressBarTelkesRecord = snapshot.data!;
                              return CircularPercentIndicator(
                                percent: valueOrDefault<double>(
                                  functions
                                      .jantung(progressBarTelkesRecord.detak),
                                  0.0,
                                ),
                                radius: 100.0,
                                lineWidth: 20.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor: valueOrDefault<Color>(
                                  () {
                                    if (progressBarTelkesRecord
                                            .statusDetakJantung ==
                                        'Tinggi') {
                                      return Color(0xFFFF0000);
                                    } else if (progressBarTelkesRecord
                                            .statusDetakJantung ==
                                        'Normal') {
                                      return FlutterFlowTheme.of(context)
                                          .primary;
                                    } else if (progressBarTelkesRecord
                                            .statusDetakJantung ==
                                        'Rendah') {
                                      return FlutterFlowTheme.of(context)
                                          .warning;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .primary;
                                    }
                                  }(),
                                  FlutterFlowTheme.of(context).primary,
                                ),
                                backgroundColor: Color(0xFFE5E5E5),
                                center: Text(
                                  valueOrDefault<String>(
                                    '${valueOrDefault<String>(
                                      progressBarTelkesRecord.detak.toString(),
                                      '0',
                                    )} BPM',
                                    'BPM',
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
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: StreamBuilder<TelkesRecord>(
                      stream: TelkesRecord.getDocument(currentUserReference!),
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
                        final containerTelkesRecord = snapshot.data!;
                        return Container(
                          width: 360.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              () {
                                if (containerTelkesRecord.statusDetakJantung ==
                                    'Tinggi') {
                                  return Color(0xFFFF0000);
                                } else if (containerTelkesRecord
                                        .statusDetakJantung ==
                                    'Normal') {
                                  return FlutterFlowTheme.of(context).primary;
                                } else if (containerTelkesRecord
                                        .statusDetakJantung ==
                                    'Rendah') {
                                  return FlutterFlowTheme.of(context).warning;
                                } else {
                                  return FlutterFlowTheme.of(context).primary;
                                }
                              }(),
                              FlutterFlowTheme.of(context).primary,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
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
                                StreamBuilder<TelkesRecord>(
                                  stream: TelkesRecord.getDocument(
                                      currentUserReference!),
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
                                    final textTelkesRecord = snapshot.data!;
                                    return Text(
                                      valueOrDefault<String>(
                                        textTelkesRecord.statusDetakJantung,
                                        '-',
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
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
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
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              weekFormat: true,
                              weekStartsMonday: false,
                              rowHeight: 64.0,
                              onChange: (DateTimeRange? newSelectedDate) async {
                                _model.calendarSelectedDay = newSelectedDate;
                                setState(() {
                                  FFAppState().Waktu = dateTimeFormat('d/M/y',
                                      _model.calendarSelectedDay!.start);
                                });
                                setState(() {});
                              },
                              titleStyle: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 16.0,
                                  ),
                              dayOfWeekStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14.0,
                                  ),
                              dateStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              selectedDateStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14.0,
                                  ),
                              inactiveDateStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: StreamBuilder<TelkesRecord>(
                                  stream: TelkesRecord.getDocument(
                                      currentUserReference!),
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
                                    final listViewTelkesRecord = snapshot.data!;
                                    return ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            height: 89.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Builder(
                                              builder: (context) {
                                                final listkadar =
                                                    listViewTelkesRecord
                                                        .listdetak
                                                        .where((e) =>
                                                            e.date ==
                                                            FFAppState().Waktu)
                                                        .toList()
                                                        .map((e) => e.detak)
                                                        .toList();
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      listkadar.length,
                                                      (listkadarIndex) {
                                                    final listkadarItem =
                                                        listkadar[
                                                            listkadarIndex];
                                                    return Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Text(
                                                        'Detak Jantung : ${listkadarItem} BPM',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    );
                                                  }).divide(
                                                      SizedBox(height: 5.0)),
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
      },
    );
  }
}
