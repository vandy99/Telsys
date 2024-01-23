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
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double gerProgressValue(int percentage) {
  return percentage / 100;
}

double suhu(double data) {
  if (data <= 34) {
    data = 34;
  } else if (data >= 45) {
    data = 45;
  }
  return ((data - 34) / (45 - 34));
}

double jantung(int data) {
  if (data <= 40) {
    data = 40;
  } else if (data >= 200) {
    data = 200;
  }
  return ((data - 40) / (200 - 40));
}

double diastole(int data) {
  if (data <= 10) {
    data = 10;
  } else if (data >= 400) {
    data = 400;
  }
  return ((data - 10) / (400 - 10));
}

double sistoleCopy(int data) {
  if (data <= 10) {
    data = 10;
  } else if (data >= 400) {
    data = 400;
  }
  return ((data - 10) / (400 - 10));
}

double oksigen(int data) {
  if (data <= 80) {
    data = 80;
  } else if (data >= 100) {
    data = 100;
  }
  return ((data - 80) / (100 - 80));
}
