import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _welcome = prefs.getInt('ff_welcome') ?? _welcome;
    });
    _safeInit(() {
      _mode = prefs.getString('ff_mode') ?? _mode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _welcome = 0;
  int get welcome => _welcome;
  set welcome(int _value) {
    _welcome = _value;
    prefs.setInt('ff_welcome', _value);
  }

  String _Forward1 = '';
  String get Forward1 => _Forward1;
  set Forward1(String _value) {
    _Forward1 = _value;
  }

  String _Forward2 = '';
  String get Forward2 => _Forward2;
  set Forward2(String _value) {
    _Forward2 = _value;
  }

  String _Forward3 = '';
  String get Forward3 => _Forward3;
  set Forward3(String _value) {
    _Forward3 = _value;
  }

  String _Forward4 = '';
  String get Forward4 => _Forward4;
  set Forward4(String _value) {
    _Forward4 = _value;
  }

  String _Forward5 = '';
  String get Forward5 => _Forward5;
  set Forward5(String _value) {
    _Forward5 = _value;
  }

  String _Forward6 = '';
  String get Forward6 => _Forward6;
  set Forward6(String _value) {
    _Forward6 = _value;
  }

  String _Gejala1 = '';
  String get Gejala1 => _Gejala1;
  set Gejala1(String _value) {
    _Gejala1 = _value;
  }

  String _Gejala2 = '';
  String get Gejala2 => _Gejala2;
  set Gejala2(String _value) {
    _Gejala2 = _value;
  }

  String _Gejala3 = '';
  String get Gejala3 => _Gejala3;
  set Gejala3(String _value) {
    _Gejala3 = _value;
  }

  String _Gejala4 = '';
  String get Gejala4 => _Gejala4;
  set Gejala4(String _value) {
    _Gejala4 = _value;
  }

  String _Gejala5 = '';
  String get Gejala5 => _Gejala5;
  set Gejala5(String _value) {
    _Gejala5 = _value;
  }

  String _Gejala6 = '';
  String get Gejala6 => _Gejala6;
  set Gejala6(String _value) {
    _Gejala6 = _value;
  }

  String _Backward = '';
  String get Backward => _Backward;
  set Backward(String _value) {
    _Backward = _value;
  }

  String _Backward1 = '';
  String get Backward1 => _Backward1;
  set Backward1(String _value) {
    _Backward1 = _value;
  }

  String _Backward2 = '';
  String get Backward2 => _Backward2;
  set Backward2(String _value) {
    _Backward2 = _value;
  }

  String _Backward3 = '';
  String get Backward3 => _Backward3;
  set Backward3(String _value) {
    _Backward3 = _value;
  }

  String _Backward4 = '';
  String get Backward4 => _Backward4;
  set Backward4(String _value) {
    _Backward4 = _value;
  }

  String _Backward5 = '';
  String get Backward5 => _Backward5;
  set Backward5(String _value) {
    _Backward5 = _value;
  }

  String _Backward6 = '';
  String get Backward6 => _Backward6;
  set Backward6(String _value) {
    _Backward6 = _value;
  }

  String _Konsultasi = '';
  String get Konsultasi => _Konsultasi;
  set Konsultasi(String _value) {
    _Konsultasi = _value;
  }

  String _Waktu = '';
  String get Waktu => _Waktu;
  set Waktu(String _value) {
    _Waktu = _value;
  }

  String _mode = '';
  String get mode => _mode;
  set mode(String _value) {
    _mode = _value;
    prefs.setString('ff_mode', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
