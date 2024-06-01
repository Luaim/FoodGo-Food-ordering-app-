import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReorderRecord extends FirestoreRecord {
  ReorderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ItemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "customization" field.
  List<String>? _customization;
  List<String> get customization => _customization ?? const [];
  bool hasCustomization() => _customization != null;

  // "specialInstruction" field.
  String? _specialInstruction;
  String get specialInstruction => _specialInstruction ?? '';
  bool hasSpecialInstruction() => _specialInstruction != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _itemName = snapshotData['ItemName'] as String?;
    _customization = getDataList(snapshotData['customization']);
    _specialInstruction = snapshotData['specialInstruction'] as String?;
    _price = castToType<double>(snapshotData['Price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reorder');

  static Stream<ReorderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReorderRecord.fromSnapshot(s));

  static Future<ReorderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReorderRecord.fromSnapshot(s));

  static ReorderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReorderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReorderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReorderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReorderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReorderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReorderRecordData({
  String? itemName,
  String? specialInstruction,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ItemName': itemName,
      'specialInstruction': specialInstruction,
      'Price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReorderRecordDocumentEquality implements Equality<ReorderRecord> {
  const ReorderRecordDocumentEquality();

  @override
  bool equals(ReorderRecord? e1, ReorderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.itemName == e2?.itemName &&
        listEquality.equals(e1?.customization, e2?.customization) &&
        e1?.specialInstruction == e2?.specialInstruction &&
        e1?.price == e2?.price;
  }

  @override
  int hash(ReorderRecord? e) => const ListEquality()
      .hash([e?.itemName, e?.customization, e?.specialInstruction, e?.price]);

  @override
  bool isValidKey(Object? o) => o is ReorderRecord;
}
