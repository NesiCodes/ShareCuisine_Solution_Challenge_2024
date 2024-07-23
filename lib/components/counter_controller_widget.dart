import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'counter_controller_model.dart';
export 'counter_controller_model.dart';

class CounterControllerWidget extends StatefulWidget {
  const CounterControllerWidget({
    super.key,
    this.parameter1,
  });

  final int? parameter1;

  @override
  State<CounterControllerWidget> createState() =>
      _CounterControllerWidgetState();
}

class _CounterControllerWidgetState extends State<CounterControllerWidget> {
  late CounterControllerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CounterControllerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Opacity(
      opacity: 0.9,
      child: Container(
        width: 120.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: BorderRadius.circular(8.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
        ),
        child: FlutterFlowCountController(
          decrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.minus,
            color: enabled
                ? Color(0xFFDB1138)
                : FlutterFlowTheme.of(context).alternate,
            size: 18.0,
          ),
          incrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.plus,
            color: enabled
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            size: 20.0,
          ),
          countBuilder: (count) => Text(
            count.toString(),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 20.0,
                ),
          ),
          count: _model.countControllerValue ??= widget.parameter1!,
          updateCount: (count) =>
              setState(() => _model.countControllerValue = count),
          stepSize: 1,
          minimum: 1,
        ),
      ),
    );
  }
}
