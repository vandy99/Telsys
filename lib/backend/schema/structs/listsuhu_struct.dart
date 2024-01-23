// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListsuhuStruct extends FFFirebaseStruct {
  ListsuhuStruct({
    String? date,
    String? suhu,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _suhu = suhu,
        super(firestoreUtilData);

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;
  bool hasDate() => _date != null;

  // "Suhu" field.
  String? _suhu;
  String get suhu => _suhu ?? '';
  set suhu(String? val) => _suhu = val;
  bool hasSuhu() => _suhu != null;

  static ListsuhuStruct fromMap(Map<String, dynamic> data) => ListsuhuStruct(
        date: data['date'] as String?,
        suhu: data['Suhu'] as String?,
      );

  static ListsuhuStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListsuhuStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'Suhu': _suhu,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'Suhu': serializeParam(
          _suhu,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListsuhuStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListsuhuStruct(
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        suhu: deserializeParam(
          data['Suhu'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListsuhuStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListsuhuStruct && date == other.date && suhu == other.suhu;
  }

  @override
  int get hashCode => const ListEquality().hash([date, suhu]);
}

ListsuhuStruct createListsuhuStruct({
  String? date,
  String? suhu,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListsuhuStruct(
      date: date,
      suhu: suhu,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListsuhuStruct? updateListsuhuStruct(
  ListsuhuStruct? listsuhu, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listsuhu
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListsuhuStructData(
  Map<String, dynamic> firestoreData,
  ListsuhuStruct? listsuhu,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listsuhu == null) {
    return;
  }
  if (listsuhu.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listsuhu.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listsuhuData = getListsuhuFirestoreData(listsuhu, forFieldValue);
  final nestedData = listsuhuData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listsuhu.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListsuhuFirestoreData(
  ListsuhuStruct? listsuhu, [
  bool forFieldValue = false,
]) {
  if (listsuhu == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listsuhu.toMap());

  // Add any Firestore field values
  listsuhu.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListsuhuListFirestoreData(
  List<ListsuhuStruct>? listsuhus,
) =>
    listsuhus?.map((e) => getListsuhuFirestoreData(e, true)).toList() ?? [];
