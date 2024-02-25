import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestedPackagesRecord extends FirestoreRecord {
  RequestedPackagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "donorName" field.
  String? _donorName;
  String get donorName => _donorName ?? '';
  bool hasDonorName() => _donorName != null;

  // "donorRating" field.
  String? _donorRating;
  String get donorRating => _donorRating ?? '';
  bool hasDonorRating() => _donorRating != null;

  // "expirationDate" field.
  String? _expirationDate;
  String get expirationDate => _expirationDate ?? '';
  bool hasExpirationDate() => _expirationDate != null;

  // "packageId" field.
  String? _packageId;
  String get packageId => _packageId ?? '';
  bool hasPackageId() => _packageId != null;

  // "packageImagePath" field.
  String? _packageImagePath;
  String get packageImagePath => _packageImagePath ?? '';
  bool hasPackageImagePath() => _packageImagePath != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "typeOfFood" field.
  String? _typeOfFood;
  String get typeOfFood => _typeOfFood ?? '';
  bool hasTypeOfFood() => _typeOfFood != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userPhoneNum" field.
  String? _userPhoneNum;
  String get userPhoneNum => _userPhoneNum ?? '';
  bool hasUserPhoneNum() => _userPhoneNum != null;

  // "userRating" field.
  String? _userRating;
  String get userRating => _userRating ?? '';
  bool hasUserRating() => _userRating != null;

  // "userImagePath" field.
  String? _userImagePath;
  String get userImagePath => _userImagePath ?? '';
  bool hasUserImagePath() => _userImagePath != null;

  // "publishDate" field.
  String? _publishDate;
  String get publishDate => _publishDate ?? '';
  bool hasPublishDate() => _publishDate != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "donorEmail" field.
  String? _donorEmail;
  String get donorEmail => _donorEmail ?? '';
  bool hasDonorEmail() => _donorEmail != null;

  // "donorId" field.
  String? _donorId;
  String get donorId => _donorId ?? '';
  bool hasDonorId() => _donorId != null;

  void _initializeFields() {
    _city = snapshotData['city'] as String?;
    _donorName = snapshotData['donorName'] as String?;
    _donorRating = snapshotData['donorRating'] as String?;
    _expirationDate = snapshotData['expirationDate'] as String?;
    _packageId = snapshotData['packageId'] as String?;
    _packageImagePath = snapshotData['packageImagePath'] as String?;
    _status = snapshotData['status'] as String?;
    _typeOfFood = snapshotData['typeOfFood'] as String?;
    _userId = snapshotData['userId'] as String?;
    _userName = snapshotData['userName'] as String?;
    _userPhoneNum = snapshotData['userPhoneNum'] as String?;
    _userRating = snapshotData['userRating'] as String?;
    _userImagePath = snapshotData['userImagePath'] as String?;
    _publishDate = snapshotData['publishDate'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _donorEmail = snapshotData['donorEmail'] as String?;
    _donorId = snapshotData['donorId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requested_packages');

  static Stream<RequestedPackagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestedPackagesRecord.fromSnapshot(s));

  static Future<RequestedPackagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RequestedPackagesRecord.fromSnapshot(s));

  static RequestedPackagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestedPackagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestedPackagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestedPackagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestedPackagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestedPackagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestedPackagesRecordData({
  String? city,
  String? donorName,
  String? donorRating,
  String? expirationDate,
  String? packageId,
  String? packageImagePath,
  String? status,
  String? typeOfFood,
  String? userId,
  String? userName,
  String? userPhoneNum,
  String? userRating,
  String? userImagePath,
  String? publishDate,
  int? quantity,
  String? donorEmail,
  String? donorId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'donorName': donorName,
      'donorRating': donorRating,
      'expirationDate': expirationDate,
      'packageId': packageId,
      'packageImagePath': packageImagePath,
      'status': status,
      'typeOfFood': typeOfFood,
      'userId': userId,
      'userName': userName,
      'userPhoneNum': userPhoneNum,
      'userRating': userRating,
      'userImagePath': userImagePath,
      'publishDate': publishDate,
      'quantity': quantity,
      'donorEmail': donorEmail,
      'donorId': donorId,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestedPackagesRecordDocumentEquality
    implements Equality<RequestedPackagesRecord> {
  const RequestedPackagesRecordDocumentEquality();

  @override
  bool equals(RequestedPackagesRecord? e1, RequestedPackagesRecord? e2) {
    return e1?.city == e2?.city &&
        e1?.donorName == e2?.donorName &&
        e1?.donorRating == e2?.donorRating &&
        e1?.expirationDate == e2?.expirationDate &&
        e1?.packageId == e2?.packageId &&
        e1?.packageImagePath == e2?.packageImagePath &&
        e1?.status == e2?.status &&
        e1?.typeOfFood == e2?.typeOfFood &&
        e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        e1?.userPhoneNum == e2?.userPhoneNum &&
        e1?.userRating == e2?.userRating &&
        e1?.userImagePath == e2?.userImagePath &&
        e1?.publishDate == e2?.publishDate &&
        e1?.quantity == e2?.quantity &&
        e1?.donorEmail == e2?.donorEmail &&
        e1?.donorId == e2?.donorId;
  }

  @override
  int hash(RequestedPackagesRecord? e) => const ListEquality().hash([
        e?.city,
        e?.donorName,
        e?.donorRating,
        e?.expirationDate,
        e?.packageId,
        e?.packageImagePath,
        e?.status,
        e?.typeOfFood,
        e?.userId,
        e?.userName,
        e?.userPhoneNum,
        e?.userRating,
        e?.userImagePath,
        e?.publishDate,
        e?.quantity,
        e?.donorEmail,
        e?.donorId
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestedPackagesRecord;
}
