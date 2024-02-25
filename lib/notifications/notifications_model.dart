import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar_reciever_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Color? colorPicked;
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
