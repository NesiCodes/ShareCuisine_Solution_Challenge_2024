import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserNotificationsRecord extends FirestoreRecord {
  UserNotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "donorName" field.
  String? _donorName;
  String get donorName => _donorName ?? '';
  bool hasDonorName() => _donorName != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  void _initializeFields() {
    _date = snapshotData['date'] as String?;
    _donorName = snapshotData['donorName'] as String?;
    _message = snapshotData['message'] as String?;
    _userId = snapshotData['userId'] as String?;
    _feedback = snapshotData['feedback'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_notifications');

  static Stream<UserNotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserNotificationsRecord.fromSnapshot(s));

  static Future<UserNotificationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserNotificationsRecord.fromSnapshot(s));

  static UserNotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserNotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserNotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserNotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserNotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserNotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserNotificationsRecordData({
  String? date,
  String? donorName,
  String? message,
  String? userId,
  String? feedback,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'donorName': donorName,
      'message': message,
      'userId': userId,
      'feedback': feedback,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserNotificationsRecordDocumentEquality
    implements Equality<UserNotificationsRecord> {
  const UserNotificationsRecordDocumentEquality();

  @override
  bool equals(UserNotificationsRecord? e1, UserNotificationsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.donorName == e2?.donorName &&
        e1?.message == e2?.message &&
        e1?.userId == e2?.userId &&
        e1?.feedback == e2?.feedback;
  }

  @override
  int hash(UserNotificationsRecord? e) => const ListEquality()
      .hash([e?.date, e?.donorName, e?.message, e?.userId, e?.feedback]);

  @override
  bool isValidKey(Object? o) => o is UserNotificationsRecord;
}
