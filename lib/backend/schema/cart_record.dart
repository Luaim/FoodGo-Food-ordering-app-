import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  bool hasDiscount() => _discount != null;

  // "customization" field.
  String? _customization;
  String get customization => _customization ?? '';
  bool hasCustomization() => _customization != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "cartFoodAmount" field.
  List<int>? _cartFoodAmount;
  List<int> get cartFoodAmount => _cartFoodAmount ?? const [];
  bool hasCartFoodAmount() => _cartFoodAmount != null;

  void _initializeFields() {
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _total = castToType<double>(snapshotData['total']);
    _discount = castToType<double>(snapshotData['discount']);
    _customization = snapshotData['customization'] as String?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _cartFoodAmount = getDataList(snapshotData['cartFoodAmount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  double? subtotal,
  double? total,
  double? discount,
  String? customization,
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subtotal': subtotal,
      'total': total,
      'discount': discount,
      'customization': customization,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.subtotal == e2?.subtotal &&
        e1?.total == e2?.total &&
        e1?.discount == e2?.discount &&
        e1?.customization == e2?.customization &&
        e1?.userID == e2?.userID &&
        listEquality.equals(e1?.cartFoodAmount, e2?.cartFoodAmount);
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.subtotal,
        e?.total,
        e?.discount,
        e?.customization,
        e?.userID,
        e?.cartFoodAmount
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
