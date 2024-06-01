import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoucherRecord extends FirestoreRecord {
  VoucherRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "voucherCode" field.
  String? _voucherCode;
  String get voucherCode => _voucherCode ?? '';
  bool hasVoucherCode() => _voucherCode != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  bool hasDiscount() => _discount != null;

  void _initializeFields() {
    _voucherCode = snapshotData['voucherCode'] as String?;
    _discount = castToType<double>(snapshotData['discount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('voucher');

  static Stream<VoucherRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VoucherRecord.fromSnapshot(s));

  static Future<VoucherRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VoucherRecord.fromSnapshot(s));

  static VoucherRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VoucherRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VoucherRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VoucherRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VoucherRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VoucherRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVoucherRecordData({
  String? voucherCode,
  double? discount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'voucherCode': voucherCode,
      'discount': discount,
    }.withoutNulls,
  );

  return firestoreData;
}

class VoucherRecordDocumentEquality implements Equality<VoucherRecord> {
  const VoucherRecordDocumentEquality();

  @override
  bool equals(VoucherRecord? e1, VoucherRecord? e2) {
    return e1?.voucherCode == e2?.voucherCode && e1?.discount == e2?.discount;
  }

  @override
  int hash(VoucherRecord? e) =>
      const ListEquality().hash([e?.voucherCode, e?.discount]);

  @override
  bool isValidKey(Object? o) => o is VoucherRecord;
}
