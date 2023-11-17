import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'setting_model.dart';
export 'setting_model.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  late SettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingModel());

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
            backgroundColor: Colors.white,
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
        final settingTelkesRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: Text(
                'Profil anda',
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 16.0, 12.0),
                child: Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: const Color(0x4D9489F5),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/Rectangle_9.png',
                        fit: BoxFit.contain,
                        alignment: const Alignment(0.00, 0.00),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, -1.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StreamBuilder<TelkesRecord>(
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
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            final textTelkesRecord = snapshot.data!;
                            return Text(
                              textTelkesRecord.displayName,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF6F61EF),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            currentUserEmail,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF15161E),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF1F4F8),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.0,
                          color: Color(0xFFE5E7EB),
                          offset: Offset(0.0, 1.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Informasi akun',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 70.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: Color(0xFFE5E7EB),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Akun');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Edit Profil',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: const Color(0xFF15161E),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    const Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(1.00, 0.00),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF606A85),
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF1F4F8),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.0,
                          color: Color(0xFFE5E7EB),
                          offset: Offset(0.0, 1.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Lanjutan',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 70.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: Color(0xFFE5E7EB),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('KonfigAlat');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Konfigurasi Alat',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: const Color(0xFF15161E),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    const Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(1.00, 0.00),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF606A85),
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.0,
                          color: Color(0xFFE5E7EB),
                          offset: Offset(0.0, 1.0),
                        )
                      ],
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('Tentang');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Tentang',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: const Color(0xFF15161E),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                const Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(1.00, 0.00),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF606A85),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('Login', context.mounted);
                        },
                        text: 'Keluar',
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF606A85),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
