import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar_donor_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'donor_finished_packages_widget.dart' show DonorFinishedPackagesWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonorFinishedPackagesModel
    extends FlutterFlowModel<DonorFinishedPackagesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for navbar-donor component.
  late NavbarDonorModel navbarDonorModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarDonorModel = createModel(context, () => NavbarDonorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarDonorModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
