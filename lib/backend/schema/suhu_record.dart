import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SuhuRecord extends FirestoreRecord {
  SuhuRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "milis" field.
  DateTime? _milis;
  DateTime? get milis => _milis;
  bool hasMilis() => _milis != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _milis = snapshotData['milis'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Suhu')
          : FirebaseFirestore.instance.collectionGroup('Suhu');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Suhu').doc();

  static Stream<SuhuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SuhuRecord.fromSnapshot(s));

  static Future<SuhuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SuhuRecord.fromSnapshot(s));

  static SuhuRecord fromSnapshot(DocumentSnapshot snapshot) => SuhuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SuhuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SuhuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SuhuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SuhuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSuhuRecordData({
  DateTime? milis,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'milis': milis,
    }.withoutNulls,
  );

  return firestoreData;
}

class SuhuRecordDocumentEquality implements Equality<SuhuRecord> {
  const SuhuRecordDocumentEquality();

  @override
  bool equals(SuhuRecord? e1, SuhuRecord? e2) {
    return e1?.milis == e2?.milis;
  }

  @override
  int hash(SuhuRecord? e) => const ListEquality().hash([e?.milis]);

  @override
  bool isValidKey(Object? o) => o is SuhuRecord;
}
