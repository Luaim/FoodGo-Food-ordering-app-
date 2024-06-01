import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TrackOrderRecord extends FirestoreRecord {
  TrackOrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "order_placed" field.
  bool? _orderPlaced;
  bool get orderPlaced => _orderPlaced ?? false;
  bool hasOrderPlaced() => _orderPlaced != null;

  // "order_inprogress" field.
  bool? _orderInprogress;
  bool get orderInprogress => _orderInprogress ?? false;
  bool hasOrderInprogress() => _orderInprogress != null;

  // "order_pickedup" field.
  bool? _orderPickedup;
  bool get orderPickedup => _orderPickedup ?? false;
  bool hasOrderPickedup() => _orderPickedup != null;

  // "order_Completed" field.
  bool? _orderCompleted;
  bool get orderCompleted => _orderCompleted ?? false;
  bool hasOrderCompleted() => _orderCompleted != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _orderPlaced = snapshotData['order_placed'] as bool?;
    _orderInprogress = snapshotData['order_inprogress'] as bool?;
    _orderPickedup = snapshotData['order_pickedup'] as bool?;
    _orderCompleted = snapshotData['order_Completed'] as bool?;
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('track_order');

  static Stream<TrackOrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackOrderRecord.fromSnapshot(s));

  static Future<TrackOrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackOrderRecord.fromSnapshot(s));

  static TrackOrderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackOrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackOrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackOrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackOrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackOrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackOrderRecordData({
  bool? orderPlaced,
  bool? orderInprogress,
  bool? orderPickedup,
  bool? orderCompleted,
  String? name,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'order_placed': orderPlaced,
      'order_inprogress': orderInprogress,
      'order_pickedup': orderPickedup,
      'order_Completed': orderCompleted,
      'name': name,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackOrderRecordDocumentEquality implements Equality<TrackOrderRecord> {
  const TrackOrderRecordDocumentEquality();

  @override
  bool equals(TrackOrderRecord? e1, TrackOrderRecord? e2) {
    return e1?.orderPlaced == e2?.orderPlaced &&
        e1?.orderInprogress == e2?.orderInprogress &&
        e1?.orderPickedup == e2?.orderPickedup &&
        e1?.orderCompleted == e2?.orderCompleted &&
        e1?.name == e2?.name &&
        e1?.image == e2?.image;
  }

  @override
  int hash(TrackOrderRecord? e) => const ListEquality().hash([
        e?.orderPlaced,
        e?.orderInprogress,
        e?.orderPickedup,
        e?.orderCompleted,
        e?.name,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is TrackOrderRecord;
}
