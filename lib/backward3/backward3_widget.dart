import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'backward3_model.dart';
export 'backward3_model.dart';

class Backward3Widget extends StatefulWidget {
  const Backward3Widget({super.key});

  @override
  _Backward3WidgetState createState() => _Backward3WidgetState();
}

class _Backward3WidgetState extends State<Backward3Widget> {
  late Backward3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Backward3Model());

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
            'Backward chainning',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'Konsultasi',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                    ),
                  },
                );
              },
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/images/progres5.png',
                      width: 350.0,
                      height: 8.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Hasil diagnosa',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 360.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 15.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                'Kemungkinan anda mengidap penyakit ${FFAppState().Backward}dengan tingkat kemungkinan ',
                                'Kemungkinan anda mengidap penyakit _ dengan tingkat kemungkinan _',
                              ),
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
                    child: Text(
                      'Gejala terpilih',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 360.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 10.0, 15.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              '1. ${FFAppState().Backward1 == 'Ya' ? 'Kedinginan' : ' '}',
                              '1. ',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              '2. ${FFAppState().Backward2 == 'Ya' ? 'Panas' : ' '}',
                              '2. ',
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            valueOrDefault<String>(
                              '3. ${FFAppState().Backward3 == 'Ya' ? 'Lemas dan mengantuk' : ' '}',
                              '3. ',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              '4. ${FFAppState().Backward4 == 'Ya' ? 'Pusing' : ' '}',
                              '4. ',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              '5. ${FFAppState().Backward5 == 'Ya' ? 'Haus berlebihan' : ' '}',
                              '5. ',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              '6. ${FFAppState().Backward6 == 'Ya' ? 'Menggigil terus-menerus' : ' '}',
                              '6. ',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
                    child: Text(
                      'Hasil analisa',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 360.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 10.0, 15.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Penyakit',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              '- ${FFAppState().Backward}',
                              '- ',
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Penyebab',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              () {
                                if (FFAppState().Backward == 'Hipotermia') {
                                  return '- Kondisi ini disebabkan akibat paparan cuaca atau air dingin yang terlalu lama tanpa pakaian yang lengkap untuk menahan kondisi dingin';
                                } else if (FFAppState().Backward ==
                                    'Hipertermia') {
                                  return '- Kondisi ini disebabkan oleh paparan suhu ekstrem yang tidak lagi mampu diregulasi oleh tubuh';
                                } else {
                                  return '-';
                                }
                              }(),
                              '-',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                          Text(
                            'Solusi',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              () {
                                if (FFAppState().Backward == 'Hipotermia') {
                                  return '- Segera lepas dan ganti baju yang basah dengan yang kering. Gunakan beberapa lapis selimut atau jaket untuk menghangatkan tubuh. Berikan minuman hangat yang tidak mengandung kafein. Berikan kompres hangat di beberapa bagian tubuh. Hindari paparan angin dan udara. Pindahkan ke area yang dekat dengan sumber panas dan dapat berbagi panas tubuh. Hindari penggunaan panas secara langsung, seperti air panas atau alas penghangat. Perhatikan kondisi kesehatan pengidap hipotermia, seperti kondisi pernapasan hingga kesadarannya.';
                                } else if (FFAppState().Backward ==
                                    'Hipertermia') {
                                  return '- Hentikan kegiatan yang sedang dilakukan. Jika sedang menggunakan pakaian yang tebal, segera ganti dengan pakaian yang tipis. Pindahkan pengidap ke tempat yang sejuk, sebaiknya ke tempat dengan sirkulasi udara yang baik atau yang memiliki pendingin ruangan. Kompres dingin terutama di bagian pergelangan tangan, leher, lipat ketiak, dan selangkangan. Berikan minum bila pengidapnya masih sadar. Hindari pemberian teh dan kopi yang mengandung kafein.';
                                } else {
                                  return '-';
                                }
                              }(),
                              '-',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
      ),
    );
  }
}
