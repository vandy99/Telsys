import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'konfig_alat_widget.dart' show KonfigAlatWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class KonfigAlatModel extends FlutterFlowModel<KonfigAlatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Nama widget.
  FocusNode? namaFocusNode1;
  TextEditingController? namaController1;
  String? Function(BuildContext, String?)? namaController1Validator;
  // State field(s) for Nama widget.
  FocusNode? namaFocusNode2;
  TextEditingController? namaController2;
  String? Function(BuildContext, String?)? namaController2Validator;
  // Stores action output result for [Backend Call - API (konfig alat)] action in Button widget.
  ApiCallResponse? apiResult5ur;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    namaFocusNode1?.dispose();
    namaController1?.dispose();

    namaFocusNode2?.dispose();
    namaController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
