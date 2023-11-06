import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'konfig_alat_widget.dart' show KonfigAlatWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {}

  @override
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
