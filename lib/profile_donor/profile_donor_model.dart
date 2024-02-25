import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar_donor_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_donor_widget.dart' show ProfileDonorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileDonorModel extends FlutterFlowModel<ProfileDonorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar-donor component.
  late NavbarDonorModel navbarDonorModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarDonorModel = createModel(context, () => NavbarDonorModel());
  }

  @override
  void dispose() {
    navbarDonorModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
