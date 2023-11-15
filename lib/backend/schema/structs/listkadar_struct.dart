// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ListkadarStruct extends FFFirebaseStruct {
  ListkadarStruct({
    String? date,
    String? kadar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _kadar = kadar,
        super(firestoreUtilData);

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;
  bool hasDate() => _date != null;

  // "kadar" field.
  String? _kadar;
  String get kadar => _kadar ?? '';
  set kadar(String? val) => _kadar = val;
  bool hasKadar() => _kadar != null;

  static ListkadarStruct fromMap(Map<String, dynamic> data) => ListkadarStruct(
        date: data['date'] as String?,
        kadar: data['kadar'] as String?,
      );

  static ListkadarStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ListkadarStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'kadar': _kadar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'kadar': serializeParam(
          _kadar,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListkadarStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListkadarStruct(
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        kadar: deserializeParam(
          data['kadar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListkadarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListkadarStruct &&
        date == other.date &&
        kadar == other.kadar;
  }

  @override
  int get hashCode => const ListEquality().hash([date, kadar]);
}

ListkadarStruct createListkadarStruct({
  String? date,
  String? kadar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListkadarStruct(
      date: date,
      kadar: kadar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListkadarStruct? updateListkadarStruct(
  ListkadarStruct? listkadar, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listkadar
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListkadarStructData(
  Map<String, dynamic> firestoreData,
  ListkadarStruct? listkadar,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listkadar == null) {
    return;
  }
  if (listkadar.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listkadar.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listkadarData = getListkadarFirestoreData(listkadar, forFieldValue);
  final nestedData = listkadarData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listkadar.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListkadarFirestoreData(
  ListkadarStruct? listkadar, [
  bool forFieldValue = false,
]) {
  if (listkadar == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listkadar.toMap());

  // Add any Firestore field values
  listkadar.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListkadarListFirestoreData(
  List<ListkadarStruct>? listkadars,
) =>
    listkadars?.map((e) => getListkadarFirestoreData(e, true)).toList() ?? [];
