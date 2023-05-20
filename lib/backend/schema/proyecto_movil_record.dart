import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProyectoMovilRecord extends FirestoreRecord {
  ProyectoMovilRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proyectoMovil');

  static Stream<ProyectoMovilRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProyectoMovilRecord.fromSnapshot(s));

  static Future<ProyectoMovilRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProyectoMovilRecord.fromSnapshot(s));

  static ProyectoMovilRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProyectoMovilRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProyectoMovilRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProyectoMovilRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProyectoMovilRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createProyectoMovilRecordData({
  String? email,
  String? userName,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'user_name': userName,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}
