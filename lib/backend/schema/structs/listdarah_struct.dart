// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ListdarahStruct extends FFFirebaseStruct {
  ListdarahStruct({
    String? date,
    String? sistole,
    String? diastole,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _sistole = sistole,
        _diastole = diastole,
        super(firestoreUtilData);

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;
  bool hasDate() => _date != null;

  // "sistole" field.
  String? _sistole;
  String get sistole => _sistole ?? '';
  set sistole(String? val) => _sistole = val;
  bool hasSistole() => _sistole != null;

  // "diastole" field.
  String? _diastole;
  String get diastole => _diastole ?? '';
  set diastole(String? val) => _diastole = val;
  bool hasDiastole() => _diastole != null;

  static ListdarahStruct fromMap(Map<String, dynamic> data) => ListdarahStruct(
        date: data['date'] as String?,
        sistole: data['sistole'] as String?,
        diastole: data['diastole'] as String?,
      );

  static ListdarahStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ListdarahStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'sistole': _sistole,
        'diastole': _diastole,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'sistole': serializeParam(
          _sistole,
          ParamType.String,
        ),
        'diastole': serializeParam(
          _diastole,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListdarahStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListdarahStruct(
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        sistole: deserializeParam(
          data['sistole'],
          ParamType.String,
          false,
        ),
        diastole: deserializeParam(
          data['diastole'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListdarahStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListdarahStruct &&
        date == other.date &&
        sistole == other.sistole &&
        diastole == other.diastole;
  }

  @override
  int get hashCode => const ListEquality().hash([date, sistole, diastole]);
}

ListdarahStruct createListdarahStruct({
  String? date,
  String? sistole,
  String? diastole,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListdarahStruct(
      date: date,
      sistole: sistole,
      diastole: diastole,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListdarahStruct? updateListdarahStruct(
  ListdarahStruct? listdarah, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listdarah
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListdarahStructData(
  Map<String, dynamic> firestoreData,
  ListdarahStruct? listdarah,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listdarah == null) {
    return;
  }
  if (listdarah.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listdarah.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listdarahData = getListdarahFirestoreData(listdarah, forFieldValue);
  final nestedData = listdarahData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listdarah.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListdarahFirestoreData(
  ListdarahStruct? listdarah, [
  bool forFieldValue = false,
]) {
  if (listdarah == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listdarah.toMap());

  // Add any Firestore field values
  listdarah.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListdarahListFirestoreData(
  List<ListdarahStruct>? listdarahs,
) =>
    listdarahs?.map((e) => getListdarahFirestoreData(e, true)).toList() ?? [];
