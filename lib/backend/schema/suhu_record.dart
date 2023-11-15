import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class SuhuRecord extends FirestoreRecord {
  SuhuRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Suhu" field.
  String? _suhu;
  String get suhu => _suhu ?? '';
  bool hasSuhu() => _suhu != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "List" field.
  List<String>? _list;
  List<String> get list => _list ?? const [];
  bool hasList() => _list != null;

  void _initializeFields() {
    _suhu = snapshotData['Suhu'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _list = getDataList(snapshotData['List']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Suhu');

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
  String? suhu,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Suhu': suhu,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class SuhuRecordDocumentEquality implements Equality<SuhuRecord> {
  const SuhuRecordDocumentEquality();

  @override
  bool equals(SuhuRecord? e1, SuhuRecord? e2) {
    const listEquality = ListEquality();
    return e1?.suhu == e2?.suhu &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        listEquality.equals(e1?.list, e2?.list);
  }

  @override
  int hash(SuhuRecord? e) => const ListEquality().hash([
        e?.suhu,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.list
      ]);

  @override
  bool isValidKey(Object? o) => o is SuhuRecord;
}
