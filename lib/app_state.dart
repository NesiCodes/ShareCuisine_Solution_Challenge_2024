import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _search = false;
  bool get search => _search;
  set search(bool _value) {
    _search = _value;
  }

  bool _display = false;
  bool get display => _display;
  set display(bool _value) {
    _display = _value;
  }

  String _role = 'Donor';
  String get role => _role;
  set role(String _value) {
    _role = _value;
  }
}
