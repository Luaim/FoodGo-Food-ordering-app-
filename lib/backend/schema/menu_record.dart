import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuRecord extends FirestoreRecord {
  MenuRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ItemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "Rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "saved" field.
  bool? _saved;
  bool get saved => _saved ?? false;
  bool hasSaved() => _saved != null;

  // "time" field.
  int? _time;
  int get time => _time ?? 0;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _itemName = snapshotData['ItemName'] as String?;
    _rating = castToType<double>(snapshotData['Rating']);
    _price = castToType<double>(snapshotData['Price']);
    _image = snapshotData['image'] as String?;
    _saved = snapshotData['saved'] as bool?;
    _time = castToType<int>(snapshotData['time']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Menu');

  static Stream<MenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuRecord.fromSnapshot(s));

  static Future<MenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuRecord.fromSnapshot(s));

  static MenuRecord fromSnapshot(DocumentSnapshot snapshot) => MenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuRecordData({
  String? itemName,
  double? rating,
  double? price,
  String? image,
  bool? saved,
  int? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ItemName': itemName,
      'Rating': rating,
      'Price': price,
      'image': image,
      'saved': saved,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuRecordDocumentEquality implements Equality<MenuRecord> {
  const MenuRecordDocumentEquality();

  @override
  bool equals(MenuRecord? e1, MenuRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.rating == e2?.rating &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.saved == e2?.saved &&
        e1?.time == e2?.time;
  }

  @override
  int hash(MenuRecord? e) => const ListEquality()
      .hash([e?.itemName, e?.rating, e?.price, e?.image, e?.saved, e?.time]);

  @override
  bool isValidKey(Object? o) => o is MenuRecord;
}
