import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar_donor_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'requestfood_copy321_widget.dart' show RequestfoodCopy321Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class RequestfoodCopy321Model
    extends FlutterFlowModel<RequestfoodCopy321Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldsearch widget.
  FocusNode? textFieldsearchFocusNode;
  TextEditingController? textFieldsearchController;
  String? Function(BuildContext, String?)? textFieldsearchControllerValidator;
  List<RequestedPackagesRecord> simpleSearchResults = [];
  // Stores action output result for [Backend Call - Read Document] action in Image widget.
  RequestedPackagesRecord? userImagePath;
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
    textFieldsearchFocusNode?.dispose();
    textFieldsearchController?.dispose();

    navbarDonorModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
