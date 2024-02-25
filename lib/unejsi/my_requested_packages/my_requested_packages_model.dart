import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar_reciever_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_requested_packages_widget.dart' show MyRequestedPackagesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyRequestedPackagesModel
    extends FlutterFlowModel<MyRequestedPackagesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbar-reciever component.
  late NavbarRecieverModel navbarRecieverModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarRecieverModel = createModel(context, () => NavbarRecieverModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarRecieverModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
