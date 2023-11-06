import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'akun_widget.dart' show AkunWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {}

  @override
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
