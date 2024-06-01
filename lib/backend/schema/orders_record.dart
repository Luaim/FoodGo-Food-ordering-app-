import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "order" field.
  String? _order;
  String get order => _order ?? '';
  bool hasOrder() => _order != null;

  // "order_status" field.
  bool? _orderStatus;
  bool get orderStatus => _orderStatus ?? false;
  bool hasOrderStatus() => _orderStatus != null;

  // "order_Time" field.
  DateTime? _orderTime;
  DateTime? get orderTime => _orderTime;
  bool hasOrderTime() => _orderTime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _email = snapshotData['email'] as String?;
    _location = snapshotData['location'] as String?;
    _order = snapshotData['order'] as String?;
    _orderStatus = snapshotData['order_status'] as bool?;
    _orderTime = snapshotData['order_Time'] as DateTime?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? name,
  String? email,
  String? location,
  String? order,
  bool? orderStatus,
  DateTime? orderTime,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'email': email,
      'location': location,
      'order': order,
      'order_status': orderStatus,
      'order_Time': orderTime,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.location == e2?.location &&
        e1?.order == e2?.order &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.orderTime == e2?.orderTime &&
        e1?.image == e2?.image;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.email,
        e?.location,
        e?.order,
        e?.orderStatus,
        e?.orderTime,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
