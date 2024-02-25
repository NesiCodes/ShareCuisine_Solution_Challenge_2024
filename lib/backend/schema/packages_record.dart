import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackagesRecord extends FirestoreRecord {
  PackagesRecord._(
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

  // "expirationDate" field.
  String? _expirationDate;
  String get expirationDate => _expirationDate ?? '';
  bool hasExpirationDate() => _expirationDate != null;

  // "typeOfFood" field.
  String? _typeOfFood;
  String get typeOfFood => _typeOfFood ?? '';
  bool hasTypeOfFood() => _typeOfFood != null;

  // "packageImagePath" field.
  String? _packageImagePath;
  String get packageImagePath => _packageImagePath ?? '';
  bool hasPackageImagePath() => _packageImagePath != null;

  // "donorId" field.
  String? _donorId;
  String get donorId => _donorId ?? '';
  bool hasDonorId() => _donorId != null;

  // "publishedDate" field.
  DateTime? _publishedDate;
  DateTime? get publishedDate => _publishedDate;
  bool hasPublishedDate() => _publishedDate != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "donorEmail" field.
  String? _donorEmail;
  String get donorEmail => _donorEmail ?? '';
  bool hasDonorEmail() => _donorEmail != null;

  void _initializeFields() {
    _city = snapshotData['city'] as String?;
    _donorName = snapshotData['donorName'] as String?;
    _expirationDate = snapshotData['expirationDate'] as String?;
    _typeOfFood = snapshotData['typeOfFood'] as String?;
    _packageImagePath = snapshotData['packageImagePath'] as String?;
    _donorId = snapshotData['donorId'] as String?;
    _publishedDate = snapshotData['publishedDate'] as DateTime?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _donorEmail = snapshotData['donorEmail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('packages');

  static Stream<PackagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PackagesRecord.fromSnapshot(s));

  static Future<PackagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PackagesRecord.fromSnapshot(s));

  static PackagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PackagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PackagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PackagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PackagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PackagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPackagesRecordData({
  String? city,
  String? donorName,
  String? expirationDate,
  String? typeOfFood,
  String? packageImagePath,
  String? donorId,
  DateTime? publishedDate,
  int? quantity,
  String? donorEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'donorName': donorName,
      'expirationDate': expirationDate,
      'typeOfFood': typeOfFood,
      'packageImagePath': packageImagePath,
      'donorId': donorId,
      'publishedDate': publishedDate,
      'quantity': quantity,
      'donorEmail': donorEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class PackagesRecordDocumentEquality implements Equality<PackagesRecord> {
  const PackagesRecordDocumentEquality();

  @override
  bool equals(PackagesRecord? e1, PackagesRecord? e2) {
    return e1?.city == e2?.city &&
        e1?.donorName == e2?.donorName &&
        e1?.expirationDate == e2?.expirationDate &&
        e1?.typeOfFood == e2?.typeOfFood &&
        e1?.packageImagePath == e2?.packageImagePath &&
        e1?.donorId == e2?.donorId &&
        e1?.publishedDate == e2?.publishedDate &&
        e1?.quantity == e2?.quantity &&
        e1?.donorEmail == e2?.donorEmail;
  }

  @override
  int hash(PackagesRecord? e) => const ListEquality().hash([
        e?.city,
        e?.donorName,
        e?.expirationDate,
        e?.typeOfFood,
        e?.packageImagePath,
        e?.donorId,
        e?.publishedDate,
        e?.quantity,
        e?.donorEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is PackagesRecord;
}
