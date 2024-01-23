// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListdetakStruct extends FFFirebaseStruct {
  ListdetakStruct({
    String? date,
    String? detak,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _detak = detak,
        super(firestoreUtilData);

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;
  bool hasDate() => _date != null;

  // "detak" field.
  String? _detak;
  String get detak => _detak ?? '';
  set detak(String? val) => _detak = val;
  bool hasDetak() => _detak != null;

  static ListdetakStruct fromMap(Map<String, dynamic> data) => ListdetakStruct(
        date: data['date'] as String?,
        detak: data['detak'] as String?,
      );

  static ListdetakStruct? maybeFromMap(dynamic data) => data is Map
      ? ListdetakStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'detak': _detak,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'detak': serializeParam(
          _detak,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListdetakStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListdetakStruct(
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        detak: deserializeParam(
          data['detak'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListdetakStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListdetakStruct &&
        date == other.date &&
        detak == other.detak;
  }

  @override
  int get hashCode => const ListEquality().hash([date, detak]);
}

ListdetakStruct createListdetakStruct({
  String? date,
  String? detak,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListdetakStruct(
      date: date,
      detak: detak,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListdetakStruct? updateListdetakStruct(
  ListdetakStruct? listdetak, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listdetak
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListdetakStructData(
  Map<String, dynamic> firestoreData,
  ListdetakStruct? listdetak,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listdetak == null) {
    return;
  }
  if (listdetak.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listdetak.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listdetakData = getListdetakFirestoreData(listdetak, forFieldValue);
  final nestedData = listdetakData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listdetak.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListdetakFirestoreData(
  ListdetakStruct? listdetak, [
  bool forFieldValue = false,
]) {
  if (listdetak == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listdetak.toMap());

  // Add any Firestore field values
  listdetak.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListdetakListFirestoreData(
  List<ListdetakStruct>? listdetaks,
) =>
    listdetaks?.map((e) => getListdetakFirestoreData(e, true)).toList() ?? [];
