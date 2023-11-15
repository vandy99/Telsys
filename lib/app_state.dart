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
  set welcome(int value) {
    _welcome = value;
    prefs.setInt('ff_welcome', value);
  }

  String _Forward1 = '';
  String get Forward1 => _Forward1;
  set Forward1(String value) {
    _Forward1 = value;
  }

  String _Forward2 = '';
  String get Forward2 => _Forward2;
  set Forward2(String value) {
    _Forward2 = value;
  }

  String _Forward3 = '';
  String get Forward3 => _Forward3;
  set Forward3(String value) {
    _Forward3 = value;
  }

  String _Forward4 = '';
  String get Forward4 => _Forward4;
  set Forward4(String value) {
    _Forward4 = value;
  }

  String _Forward5 = '';
  String get Forward5 => _Forward5;
  set Forward5(String value) {
    _Forward5 = value;
  }

  String _Forward6 = '';
  String get Forward6 => _Forward6;
  set Forward6(String value) {
    _Forward6 = value;
  }

  String _Gejala1 = '';
  String get Gejala1 => _Gejala1;
  set Gejala1(String value) {
    _Gejala1 = value;
  }

  String _Gejala2 = '';
  String get Gejala2 => _Gejala2;
  set Gejala2(String value) {
    _Gejala2 = value;
  }

  String _Gejala3 = '';
  String get Gejala3 => _Gejala3;
  set Gejala3(String value) {
    _Gejala3 = value;
  }

  String _Gejala4 = '';
  String get Gejala4 => _Gejala4;
  set Gejala4(String value) {
    _Gejala4 = value;
  }

  String _Gejala5 = '';
  String get Gejala5 => _Gejala5;
  set Gejala5(String value) {
    _Gejala5 = value;
  }

  String _Gejala6 = '';
  String get Gejala6 => _Gejala6;
  set Gejala6(String value) {
    _Gejala6 = value;
  }

  String _Backward = '';
  String get Backward => _Backward;
  set Backward(String value) {
    _Backward = value;
  }

  String _Backward1 = '';
  String get Backward1 => _Backward1;
  set Backward1(String value) {
    _Backward1 = value;
  }

  String _Backward2 = '';
  String get Backward2 => _Backward2;
  set Backward2(String value) {
    _Backward2 = value;
  }

  String _Backward3 = '';
  String get Backward3 => _Backward3;
  set Backward3(String value) {
    _Backward3 = value;
  }

  String _Backward4 = '';
  String get Backward4 => _Backward4;
  set Backward4(String value) {
    _Backward4 = value;
  }

  String _Backward5 = '';
  String get Backward5 => _Backward5;
  set Backward5(String value) {
    _Backward5 = value;
  }

  String _Backward6 = '';
  String get Backward6 => _Backward6;
  set Backward6(String value) {
    _Backward6 = value;
  }

  String _Konsultasi = '';
  String get Konsultasi => _Konsultasi;
  set Konsultasi(String value) {
    _Konsultasi = value;
  }

  String _Waktu = '';
  String get Waktu => _Waktu;
  set Waktu(String value) {
    _Waktu = value;
  }

  String _mode = '';
  String get mode => _mode;
  set mode(String value) {
    _mode = value;
    prefs.setString('ff_mode', value);
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
