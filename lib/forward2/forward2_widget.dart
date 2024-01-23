import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forward2_model.dart';
export 'forward2_model.dart';

class Forward2Widget extends StatefulWidget {
  const Forward2Widget({Key? key}) : super(key: key);

  @override
  _Forward2WidgetState createState() => _Forward2WidgetState();
}

class _Forward2WidgetState extends State<Forward2Widget> {
  late Forward2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Forward2Model());

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
      child: WillPopScope(
        onWillPop: () async => false,
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
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Text(
                'Forward chainning',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
            ),
            actions: [
              FlutterFlowIconButton(
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'Konsultasi',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Image.asset(
                        'assets/images/progres2.png',
                        width: 350.0,
                        height: 8.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Riwayat pertanyaan',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 360.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 10.0, 15.0, 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  '1. Apakah anda merasa kedinginan ? ${FFAppState().Forward1}',
                                  '1. Apakah anda merasa kedinginan ?',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  '2. Apakah anda merasa kepanasan ? ${FFAppState().Forward2}',
                                  '2. Apakah anda merasa kepanasan ?',
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Text(
                                valueOrDefault<String>(
                                  '3. Apakah anda merasa lemas dan mengantuk ? ${FFAppState().Forward3}',
                                  '3. Apakah anda merasa lemas dan mengantuk ?',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  '4. Apakah anda merasa pusing ? ${FFAppState().Forward4}',
                                  '4. Apakah anda merasa pusing ?',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  '5. Apakah anda merasa haus berlebihan ? ${FFAppState().Forward5}',
                                  '5. Apakah anda merasa haus berlebihan ?',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  '6. Apakah anda merasa menggigil terus-menerus ? ${FFAppState().Forward6}',
                                  '6. Apakah anda merasa menggigil terus-menerus ?',
                                ),
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
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
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
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 15.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                '1. ${FFAppState().Forward1 == 'Ya' ? 'Kedinginan' : ' '}',
                                '1. ',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                '2. ${FFAppState().Forward2 == 'Ya' ? 'Panas' : ' '}',
                                '2. ',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              valueOrDefault<String>(
                                '3. ${FFAppState().Forward3 == 'Ya' ? 'Lemas dan mengantuk' : ' '}',
                                '3. ',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                '4. ${FFAppState().Forward4 == 'Ya' ? 'Pusing' : ' '}',
                                '4. ',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                '5. ${FFAppState().Forward5 == 'Ya' ? 'Haus berlebihan' : ' '}',
                                '5. ',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                '6. ${FFAppState().Forward6 == 'Ya' ? 'Menggigil terus-menerus' : ' '}',
                                '6. ',
                              ),
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
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
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
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Container(
                        width: 360.0,
                        height: 450.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 10.0, 15.0, 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Penyakit',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  () {
                                    if ((FFAppState().Forward1 == 'Ya') &&
                                        (FFAppState().Forward2 == 'Tidak')) {
                                      return () {
                                        if ((FFAppState().Forward3 == 'Ya') &&
                                            (FFAppState().Forward6 ==
                                                'Tidak')) {
                                          return 'Hipotermia';
                                        } else if ((FFAppState().Forward3 ==
                                                'Tidak') &&
                                            (FFAppState().Forward6 == 'Ya')) {
                                          return 'Hipotermia';
                                        } else if ((FFAppState().Forward3 ==
                                                'Ya') &&
                                            (FFAppState().Forward6 == 'Ya')) {
                                          return 'Hipotermia';
                                        } else if ((FFAppState().Forward3 ==
                                                'Tidak') &&
                                            (FFAppState().Forward6 ==
                                                'Tidak')) {
                                          return 'Hipotermia';
                                        } else {
                                          return 'Hipotermia';
                                        }
                                      }();
                                    } else if ((FFAppState().Forward1 ==
                                            'Tidak') &&
                                        (FFAppState().Forward2 == 'Ya')) {
                                      return () {
                                        if ((FFAppState().Forward4 == 'Ya') &&
                                            (FFAppState().Forward5 ==
                                                'Tidak')) {
                                          return 'Hipertermia';
                                        } else if ((FFAppState().Forward4 ==
                                                'Tidak') &&
                                            (FFAppState().Forward5 == 'Ya')) {
                                          return 'Hipertermia';
                                        } else if ((FFAppState().Forward4 ==
                                                'Ya') &&
                                            (FFAppState().Forward5 == 'Ya')) {
                                          return 'Hipertermia';
                                        } else if ((FFAppState().Forward4 ==
                                                'Tidak') &&
                                            (FFAppState().Forward5 ==
                                                'Tidak')) {
                                          return 'Hipertermia';
                                        } else {
                                          return 'Hipertermia';
                                        }
                                      }();
                                    } else {
                                      return '-';
                                    }
                                  }(),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Penyebab',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Text(
                                  () {
                                    if ((FFAppState().Forward1 == 'Ya') &&
                                        (FFAppState().Forward2 == 'Tidak')) {
                                      return () {
                                        if ((FFAppState().Forward3 == 'Ya') &&
                                            (FFAppState().Forward6 ==
                                                'Tidak')) {
                                          return '- Kondisi ini disebabkan akibat paparan cuaca atau air dingin yang terlalu lama tanpa pakaian yang lengkap untuk menahan kondisi dingin';
                                        } else if ((FFAppState().Forward3 ==
                                                'Tidak') &&
                                            (FFAppState().Forward6 == 'Ya')) {
                                          return '- Kondisi ini disebabkan akibat paparan cuaca atau air dingin yang terlalu lama tanpa pakaian yang lengkap untuk menahan kondisi dingin';
                                        } else if ((FFAppState().Forward3 ==
                                                'Ya') &&
                                            (FFAppState().Forward6 == 'Ya')) {
                                          return '- Kondisi ini disebabkan akibat paparan cuaca atau air dingin yang terlalu lama tanpa pakaian yang lengkap untuk menahan kondisi dingin';
                                        } else if ((FFAppState().Forward3 ==
                                                'Tidak') &&
                                            (FFAppState().Forward6 ==
                                                'Tidak')) {
                                          return '- Kondisi ini disebabkan akibat paparan cuaca atau air dingin yang terlalu lama tanpa pakaian yang lengkap untuk menahan kondisi dingin';
                                        } else {
                                          return '- Kondisi ini disebabkan akibat paparan cuaca atau air dingin yang terlalu lama tanpa pakaian yang lengkap untuk menahan kondisi dingin';
                                        }
                                      }();
                                    } else if ((FFAppState().Forward1 ==
                                            'Tidak') &&
                                        (FFAppState().Forward2 == 'Ya')) {
                                      return () {
                                        if ((FFAppState().Forward4 == 'Ya') &&
                                            (FFAppState().Forward5 ==
                                                'Tidak')) {
                                          return '- Kondisi ini disebabkan oleh paparan suhu ekstrem yang tidak lagi mampu diregulasi oleh tubuh';
                                        } else if ((FFAppState().Forward4 ==
                                                'Tidak') &&
                                            (FFAppState().Forward5 == 'Ya')) {
                                          return '- Kondisi ini disebabkan oleh paparan suhu ekstrem yang tidak lagi mampu diregulasi oleh tubuh';
                                        } else if ((FFAppState().Forward4 ==
                                                'Ya') &&
                                            (FFAppState().Forward5 == 'Ya')) {
                                          return '- Kondisi ini disebabkan oleh paparan suhu ekstrem yang tidak lagi mampu diregulasi oleh tubuh';
                                        } else if ((FFAppState().Forward4 ==
                                                'Tidak') &&
                                            (FFAppState().Forward5 ==
                                                'Tidak')) {
                                          return '- Kondisi ini disebabkan oleh paparan suhu ekstrem yang tidak lagi mampu diregulasi oleh tubuh';
                                        } else {
                                          return '- Kondisi ini disebabkan oleh paparan suhu ekstrem yang tidak lagi mampu diregulasi oleh tubuh';
                                        }
                                      }();
                                    } else {
                                      return '-';
                                    }
                                  }(),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Solusi',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Text(
                                  () {
                                    if ((FFAppState().Forward1 == 'Ya') &&
                                        (FFAppState().Forward2 == 'Tidak')) {
                                      return () {
                                        if ((FFAppState().Forward3 == 'Ya') &&
                                            (FFAppState().Forward6 ==
                                                'Tidak')) {
                                          return '- Segera lepas dan ganti baju yang basah dengan yang kering. Gunakan beberapa lapis selimut atau jaket untuk menghangatkan tubuh. Berikan minuman hangat yang tidak mengandung kafein. Berikan kompres hangat di beberapa bagian tubuh. Hindari paparan angin dan udara. Pindahkan ke area yang dekat dengan sumber panas dan dapat berbagi panas tubuh. Hindari penggunaan panas secara langsung, seperti air panas atau alas penghangat. Perhatikan kondisi kesehatan pengidap hipotermia, seperti kondisi pernapasan hingga kesadarannya.';
                                        } else if ((FFAppState().Forward3 ==
                                                'Tidak') &&
                                            (FFAppState().Forward6 == 'Ya')) {
                                          return '- Segera lepas dan ganti baju yang basah dengan yang kering. Gunakan beberapa lapis selimut atau jaket untuk menghangatkan tubuh. Berikan minuman hangat yang tidak mengandung kafein. Berikan kompres hangat di beberapa bagian tubuh. Hindari paparan angin dan udara. Pindahkan ke area yang dekat dengan sumber panas dan dapat berbagi panas tubuh. Hindari penggunaan panas secara langsung, seperti air panas atau alas penghangat. Perhatikan kondisi kesehatan pengidap hipotermia, seperti kondisi pernapasan hingga kesadarannya.';
                                        } else if ((FFAppState().Forward3 ==
                                                'Ya') &&
                                            (FFAppState().Forward6 == 'Ya')) {
                                          return '- Segera lepas dan ganti baju yang basah dengan yang kering. Gunakan beberapa lapis selimut atau jaket untuk menghangatkan tubuh. Berikan minuman hangat yang tidak mengandung kafein. Berikan kompres hangat di beberapa bagian tubuh. Hindari paparan angin dan udara. Pindahkan ke area yang dekat dengan sumber panas dan dapat berbagi panas tubuh. Hindari penggunaan panas secara langsung, seperti air panas atau alas penghangat. Perhatikan kondisi kesehatan pengidap hipotermia, seperti kondisi pernapasan hingga kesadarannya.';
                                        } else if ((FFAppState().Forward3 ==
                                                'Tidak') &&
                                            (FFAppState().Forward6 ==
                                                'Tidak')) {
                                          return '- Segera lepas dan ganti baju yang basah dengan yang kering. Gunakan beberapa lapis selimut atau jaket untuk menghangatkan tubuh. Berikan minuman hangat yang tidak mengandung kafein. Berikan kompres hangat di beberapa bagian tubuh. Hindari paparan angin dan udara. Pindahkan ke area yang dekat dengan sumber panas dan dapat berbagi panas tubuh. Hindari penggunaan panas secara langsung, seperti air panas atau alas penghangat. Perhatikan kondisi kesehatan pengidap hipotermia, seperti kondisi pernapasan hingga kesadarannya.';
                                        } else {
                                          return '- Segera lepas dan ganti baju yang basah dengan yang kering. Gunakan beberapa lapis selimut atau jaket untuk menghangatkan tubuh. Berikan minuman hangat yang tidak mengandung kafein. Berikan kompres hangat di beberapa bagian tubuh. Hindari paparan angin dan udara. Pindahkan ke area yang dekat dengan sumber panas dan dapat berbagi panas tubuh. Hindari penggunaan panas secara langsung, seperti air panas atau alas penghangat. Perhatikan kondisi kesehatan pengidap hipotermia, seperti kondisi pernapasan hingga kesadarannya.';
                                        }
                                      }();
                                    } else if ((FFAppState().Forward1 ==
                                            'Tidak') &&
                                        (FFAppState().Forward2 == 'Ya')) {
                                      return () {
                                        if ((FFAppState().Forward4 == 'Ya') &&
                                            (FFAppState().Forward5 ==
                                                'Tidak')) {
                                          return '- Hentikan kegiatan yang sedang dilakukan. Jika sedang menggunakan pakaian yang tebal, segera ganti dengan pakaian yang tipis. Pindahkan pengidap ke tempat yang sejuk, sebaiknya ke tempat dengan sirkulasi udara yang baik atau yang memiliki pendingin ruangan. Kompres dingin terutama di bagian pergelangan tangan, leher, lipat ketiak, dan selangkangan. Berikan minum bila pengidapnya masih sadar. Hindari pemberian teh dan kopi yang mengandung kafein.';
                                        } else if ((FFAppState().Forward4 ==
                                                'Tidak') &&
                                            (FFAppState().Forward5 == 'Ya')) {
                                          return '- Hentikan kegiatan yang sedang dilakukan. Jika sedang menggunakan pakaian yang tebal, segera ganti dengan pakaian yang tipis. Pindahkan pengidap ke tempat yang sejuk, sebaiknya ke tempat dengan sirkulasi udara yang baik atau yang memiliki pendingin ruangan. Kompres dingin terutama di bagian pergelangan tangan, leher, lipat ketiak, dan selangkangan. Berikan minum bila pengidapnya masih sadar. Hindari pemberian teh dan kopi yang mengandung kafein.';
                                        } else if ((FFAppState().Forward4 ==
                                                'Ya') &&
                                            (FFAppState().Forward5 == 'Ya')) {
                                          return '- Hentikan kegiatan yang sedang dilakukan. Jika sedang menggunakan pakaian yang tebal, segera ganti dengan pakaian yang tipis. Pindahkan pengidap ke tempat yang sejuk, sebaiknya ke tempat dengan sirkulasi udara yang baik atau yang memiliki pendingin ruangan. Kompres dingin terutama di bagian pergelangan tangan, leher, lipat ketiak, dan selangkangan. Berikan minum bila pengidapnya masih sadar. Hindari pemberian teh dan kopi yang mengandung kafein.';
                                        } else if ((FFAppState().Forward4 ==
                                                'Tidak') &&
                                            (FFAppState().Forward5 ==
                                                'Tidak')) {
                                          return '- Hentikan kegiatan yang sedang dilakukan. Jika sedang menggunakan pakaian yang tebal, segera ganti dengan pakaian yang tipis. Pindahkan pengidap ke tempat yang sejuk, sebaiknya ke tempat dengan sirkulasi udara yang baik atau yang memiliki pendingin ruangan. Kompres dingin terutama di bagian pergelangan tangan, leher, lipat ketiak, dan selangkangan. Berikan minum bila pengidapnya masih sadar. Hindari pemberian teh dan kopi yang mengandung kafein.';
                                        } else {
                                          return '- Hentikan kegiatan yang sedang dilakukan. Jika sedang menggunakan pakaian yang tebal, segera ganti dengan pakaian yang tipis. Pindahkan pengidap ke tempat yang sejuk, sebaiknya ke tempat dengan sirkulasi udara yang baik atau yang memiliki pendingin ruangan. Kompres dingin terutama di bagian pergelangan tangan, leher, lipat ketiak, dan selangkangan. Berikan minum bila pengidapnya masih sadar. Hindari pemberian teh dan kopi yang mengandung kafein.';
                                        }
                                      }();
                                    } else {
                                      return '-';
                                    }
                                  }(),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
