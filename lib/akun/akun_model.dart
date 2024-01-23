import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'akun_widget.dart' show AkunWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AkunModel extends FlutterFlowModel<AkunWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Nama widget.
  FocusNode? namaFocusNode;
  TextEditingController? namaController;
  String? Function(BuildContext, String?)? namaControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Umur widget.
  FocusNode? umurFocusNode;
  TextEditingController? umurController;
  String? Function(BuildContext, String?)? umurControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Beratbadan widget.
  FocusNode? beratbadanFocusNode;
  TextEditingController? beratbadanController;
  String? Function(BuildContext, String?)? beratbadanControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    namaFocusNode?.dispose();
    namaController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    umurFocusNode?.dispose();
    umurController?.dispose();

    beratbadanFocusNode?.dispose();
    beratbadanController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
