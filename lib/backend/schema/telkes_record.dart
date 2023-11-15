import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TelkesRecord extends FirestoreRecord {
  TelkesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "Baterai" field.
  int? _baterai;
  int get baterai => _baterai ?? 0;
  bool hasBaterai() => _baterai != null;

  // "Umur" field.
  int? _umur;
  int get umur => _umur ?? 0;
  bool hasUmur() => _umur != null;

  // "Jenis_kelamin" field.
  String? _jenisKelamin;
  String get jenisKelamin => _jenisKelamin ?? '';
  bool hasJenisKelamin() => _jenisKelamin != null;

  // "Berat" field.
  int? _berat;
  int get berat => _berat ?? 0;
  bool hasBerat() => _berat != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Suhu" field.
  int? _suhu;
  int get suhu => _suhu ?? 0;
  bool hasSuhu() => _suhu != null;

  // "Detak" field.
  int? _detak;
  int get detak => _detak ?? 0;
  bool hasDetak() => _detak != null;

  // "Kadar" field.
  int? _kadar;
  int get kadar => _kadar ?? 0;
  bool hasKadar() => _kadar != null;

  // "Sistole" field.
  int? _sistole;
  int get sistole => _sistole ?? 0;
  bool hasSistole() => _sistole != null;

  // "Diastole" field.
  int? _diastole;
  int get diastole => _diastole ?? 0;
  bool hasDiastole() => _diastole != null;

  // "Status_suhu" field.
  String? _statusSuhu;
  String get statusSuhu => _statusSuhu ?? '';
  bool hasStatusSuhu() => _statusSuhu != null;

  // "Status_detak_jantung" field.
  String? _statusDetakJantung;
  String get statusDetakJantung => _statusDetakJantung ?? '';
  bool hasStatusDetakJantung() => _statusDetakJantung != null;

  // "Status_kadar_oksigen" field.
  String? _statusKadarOksigen;
  String get statusKadarOksigen => _statusKadarOksigen ?? '';
  bool hasStatusKadarOksigen() => _statusKadarOksigen != null;

  // "Status_tensi" field.
  String? _statusTensi;
  String get statusTensi => _statusTensi ?? '';
  bool hasStatusTensi() => _statusTensi != null;

  // "Mode" field.
  String? _mode;
  String get mode => _mode ?? '';
  bool hasMode() => _mode != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "List" field.
  List<ListsuhuStruct>? _list;
  List<ListsuhuStruct> get list => _list ?? const [];
  bool hasList() => _list != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "Listdetak" field.
  List<ListdetakStruct>? _listdetak;
  List<ListdetakStruct> get listdetak => _listdetak ?? const [];
  bool hasListdetak() => _listdetak != null;

  // "Listkadar" field.
  List<ListkadarStruct>? _listkadar;
  List<ListkadarStruct> get listkadar => _listkadar ?? const [];
  bool hasListkadar() => _listkadar != null;

  // "Listdarah" field.
  List<ListdarahStruct>? _listdarah;
  List<ListdarahStruct> get listdarah => _listdarah ?? const [];
  bool hasListdarah() => _listdarah != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _baterai = castToType<int>(snapshotData['Baterai']);
    _umur = castToType<int>(snapshotData['Umur']);
    _jenisKelamin = snapshotData['Jenis_kelamin'] as String?;
    _berat = castToType<int>(snapshotData['Berat']);
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _suhu = castToType<int>(snapshotData['Suhu']);
    _detak = castToType<int>(snapshotData['Detak']);
    _kadar = castToType<int>(snapshotData['Kadar']);
    _sistole = castToType<int>(snapshotData['Sistole']);
    _diastole = castToType<int>(snapshotData['Diastole']);
    _statusSuhu = snapshotData['Status_suhu'] as String?;
    _statusDetakJantung = snapshotData['Status_detak_jantung'] as String?;
    _statusKadarOksigen = snapshotData['Status_kadar_oksigen'] as String?;
    _statusTensi = snapshotData['Status_tensi'] as String?;
    _mode = snapshotData['Mode'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _list = getStructList(
      snapshotData['List'],
      ListsuhuStruct.fromMap,
    );
    _uid = snapshotData['uid'] as String?;
    _listdetak = getStructList(
      snapshotData['Listdetak'],
      ListdetakStruct.fromMap,
    );
    _listkadar = getStructList(
      snapshotData['Listkadar'],
      ListkadarStruct.fromMap,
    );
    _listdarah = getStructList(
      snapshotData['Listdarah'],
      ListdarahStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('telkes');

  static Stream<TelkesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TelkesRecord.fromSnapshot(s));

  static Future<TelkesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TelkesRecord.fromSnapshot(s));

  static TelkesRecord fromSnapshot(DocumentSnapshot snapshot) => TelkesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TelkesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TelkesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TelkesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TelkesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTelkesRecordData({
  String? displayName,
  int? baterai,
  int? umur,
  String? jenisKelamin,
  int? berat,
  String? email,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  int? suhu,
  int? detak,
  int? kadar,
  int? sistole,
  int? diastole,
  String? statusSuhu,
  String? statusDetakJantung,
  String? statusKadarOksigen,
  String? statusTensi,
  String? mode,
  DateTime? time,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'Baterai': baterai,
      'Umur': umur,
      'Jenis_kelamin': jenisKelamin,
      'Berat': berat,
      'email': email,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Suhu': suhu,
      'Detak': detak,
      'Kadar': kadar,
      'Sistole': sistole,
      'Diastole': diastole,
      'Status_suhu': statusSuhu,
      'Status_detak_jantung': statusDetakJantung,
      'Status_kadar_oksigen': statusKadarOksigen,
      'Status_tensi': statusTensi,
      'Mode': mode,
      'time': time,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TelkesRecordDocumentEquality implements Equality<TelkesRecord> {
  const TelkesRecordDocumentEquality();

  @override
  bool equals(TelkesRecord? e1, TelkesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.displayName == e2?.displayName &&
        e1?.baterai == e2?.baterai &&
        e1?.umur == e2?.umur &&
        e1?.jenisKelamin == e2?.jenisKelamin &&
        e1?.berat == e2?.berat &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.suhu == e2?.suhu &&
        e1?.detak == e2?.detak &&
        e1?.kadar == e2?.kadar &&
        e1?.sistole == e2?.sistole &&
        e1?.diastole == e2?.diastole &&
        e1?.statusSuhu == e2?.statusSuhu &&
        e1?.statusDetakJantung == e2?.statusDetakJantung &&
        e1?.statusKadarOksigen == e2?.statusKadarOksigen &&
        e1?.statusTensi == e2?.statusTensi &&
        e1?.mode == e2?.mode &&
        e1?.time == e2?.time &&
        listEquality.equals(e1?.list, e2?.list) &&
        e1?.uid == e2?.uid &&
        listEquality.equals(e1?.listdetak, e2?.listdetak) &&
        listEquality.equals(e1?.listkadar, e2?.listkadar) &&
        listEquality.equals(e1?.listdarah, e2?.listdarah);
  }

  @override
  int hash(TelkesRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.baterai,
        e?.umur,
        e?.jenisKelamin,
        e?.berat,
        e?.email,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.suhu,
        e?.detak,
        e?.kadar,
        e?.sistole,
        e?.diastole,
        e?.statusSuhu,
        e?.statusDetakJantung,
        e?.statusKadarOksigen,
        e?.statusTensi,
        e?.mode,
        e?.time,
        e?.list,
        e?.uid,
        e?.listdetak,
        e?.listkadar,
        e?.listdarah
      ]);

  @override
  bool isValidKey(Object? o) => o is TelkesRecord;
}
