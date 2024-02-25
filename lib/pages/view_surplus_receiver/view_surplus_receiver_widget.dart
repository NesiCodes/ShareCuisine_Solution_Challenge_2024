import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar_reciever_widget.dart';
import '/components/tf_quantity_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_surplus_receiver_model.dart';
export 'view_surplus_receiver_model.dart';

class ViewSurplusReceiverWidget extends StatefulWidget {
  const ViewSurplusReceiverWidget({super.key});

  @override
  State<ViewSurplusReceiverWidget> createState() =>
      _ViewSurplusReceiverWidgetState();
}

class _ViewSurplusReceiverWidgetState extends State<ViewSurplusReceiverWidget> {
  late ViewSurplusReceiverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewSurplusReceiverModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Surplus Food ',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<PackagesRecord>>(
                        stream: queryPackagesRecord(
                          queryBuilder: (packagesRecord) =>
                              packagesRecord.where(
                            'quantity',
                            isNotEqualTo: 0,
                          ),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<PackagesRecord> listViewPackagesRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewPackagesRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewPackagesRecord =
                                  listViewPackagesRecordList[listViewIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          listViewPackagesRecord
                                              .packageImagePath,
                                          width: 300.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          3.0, 10.0, 0.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        height: 124.0,
                                        constraints: BoxConstraints(
                                          minWidth: 70.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        3.0, 8.0, 0.0, 0.0),
                                                child: RichText(
                                                  textScaleFactor:
                                                      MediaQuery.of(context)
                                                          .textScaleFactor,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'Type:',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            listViewPackagesRecord
                                                                .typeOfFood,
                                                        style: TextStyle(),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: RichText(
                                                textScaleFactor:
                                                    MediaQuery.of(context)
                                                        .textScaleFactor,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: ' Quantity: ',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          listViewPackagesRecord
                                                              .quantity
                                                              .toString(),
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: RichText(
                                                textScaleFactor:
                                                    MediaQuery.of(context)
                                                        .textScaleFactor,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          ' Expiration date: ',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          listViewPackagesRecord
                                                              .expirationDate,
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        3.0, 0.0, 0.0, 0.0),
                                                child: RichText(
                                                  textScaleFactor:
                                                      MediaQuery.of(context)
                                                          .textScaleFactor,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'City: ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            listViewPackagesRecord
                                                                .city,
                                                        style: TextStyle(),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              textScaleFactor:
                                                  MediaQuery.of(context)
                                                      .textScaleFactor,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: listViewPackagesRecord
                                                        .donorName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if ((listViewPackagesRecord.city ==
                                                  valueOrDefault(
                                                      currentUserDocument?.city,
                                                      '')) &&
                                              (listViewPackagesRecord
                                                      .quantity >=
                                                  (int.parse(
                                                      valueOrDefault<String>(
                                                    _model.tfQuantityModels
                                                        .getValueAtIndex(
                                                      listViewIndex,
                                                      (m) =>
                                                          m.textController.text,
                                                    ),
                                                    '1',
                                                  ))))) {
                                            await queryPackagesRecordOnce(
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);

                                            await listViewPackagesRecord
                                                .reference
                                                .update(
                                                    createPackagesRecordData(
                                              quantity: listViewPackagesRecord
                                                      .quantity -
                                                  int.parse(
                                                      valueOrDefault<String>(
                                                    _model.tfQuantityModels
                                                        .getValueAtIndex(
                                                      listViewIndex,
                                                      (m) =>
                                                          m.textController.text,
                                                    ),
                                                    '1',
                                                  )),
                                            ));

                                            await RequestedPackagesRecord
                                                .collection
                                                .doc()
                                                .set(
                                                    createRequestedPackagesRecordData(
                                                  city: listViewPackagesRecord
                                                      .city,
                                                  donorName:
                                                      listViewPackagesRecord
                                                          .donorName,
                                                  expirationDate:
                                                      listViewPackagesRecord
                                                          .expirationDate,
                                                  packageImagePath:
                                                      listViewPackagesRecord
                                                          .packageImagePath,
                                                  quantity: int.parse((_model
                                                      .tfQuantityModels
                                                      .getValueAtIndex(
                                                    listViewIndex,
                                                    (m) =>
                                                        m.textController.text,
                                                  )!)),
                                                  status: 'Requested',
                                                  typeOfFood:
                                                      listViewPackagesRecord
                                                          .typeOfFood,
                                                  userId: currentUserUid,
                                                  userImagePath: valueOrDefault(
                                                      currentUserDocument
                                                          ?.imagePath,
                                                      ''),
                                                  userName: valueOrDefault(
                                                      currentUserDocument?.name,
                                                      ''),
                                                  userPhoneNum: valueOrDefault(
                                                      currentUserDocument
                                                          ?.phoneNum,
                                                      ''),
                                                  donorEmail: currentUserEmail,
                                                  donorId:
                                                      listViewPackagesRecord
                                                          .donorId,
                                                ));
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Requested successfully',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'The package must be in the same city and the request must be lower than the given qauntity',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 6000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            );
                                          }
                                        },
                                        text: '',
                                        icon: Icon(
                                          Icons.add,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 2.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.tfQuantityModels.getModel(
                                        listViewIndex.toString(),
                                        listViewIndex,
                                      ),
                                      updateCallback: () => setState(() {}),
                                      child: TfQuantityWidget(
                                        key: Key(
                                          'Key2a4_${listViewIndex.toString()}',
                                        ),
                                        parameter1: '1',
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: wrapWithModel(
                      model: _model.navbarRecieverModel,
                      updateCallback: () => setState(() {}),
                      child: NavbarRecieverWidget(
                        hidden: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
