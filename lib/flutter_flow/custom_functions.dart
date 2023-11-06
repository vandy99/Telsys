import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double gerProgressValue(int percentage) {
  return percentage / 100;
}

double suhu(double data) {
  return ((data - 34) / (45 - 34));
}

double jantung(int data) {
  return ((data - 40) / (200 - 40));
}

double diastole(int data) {
  return ((data - 10) / (400 - 10));
}

double sistoleCopy(int data) {
  return ((data - 10) / (400 - 10));
}

double oksigen(int data) {
  return ((data - 80) / (100 - 80));
}
