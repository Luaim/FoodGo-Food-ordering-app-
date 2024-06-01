import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantRecord extends FirestoreRecord {
  RestaurantRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "restaurantName" field.
  String? _restaurantName;
  String get restaurantName => _restaurantName ?? '';
  bool hasRestaurantName() => _restaurantName != null;

  // "ratings" field.
  double? _ratings;
  double get ratings => _ratings ?? 0.0;
  bool hasRatings() => _ratings != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "menuList" field.
  List<DocumentReference>? _menuList;
  List<DocumentReference> get menuList => _menuList ?? const [];
  bool hasMenuList() => _menuList != null;

  void _initializeFields() {
    _restaurantName = snapshotData['restaurantName'] as String?;
    _ratings = castToType<double>(snapshotData['ratings']);
    _image = snapshotData['image'] as String?;
    _menuList = getDataList(snapshotData['menuList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurant');

  static Stream<RestaurantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantRecord.fromSnapshot(s));

  static Future<RestaurantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantRecord.fromSnapshot(s));

  static RestaurantRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantRecordData({
  String? restaurantName,
  double? ratings,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'restaurantName': restaurantName,
      'ratings': ratings,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantRecordDocumentEquality implements Equality<RestaurantRecord> {
  const RestaurantRecordDocumentEquality();

  @override
  bool equals(RestaurantRecord? e1, RestaurantRecord? e2) {
    const listEquality = ListEquality();
    return e1?.restaurantName == e2?.restaurantName &&
        e1?.ratings == e2?.ratings &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.menuList, e2?.menuList);
  }

  @override
  int hash(RestaurantRecord? e) => const ListEquality()
      .hash([e?.restaurantName, e?.ratings, e?.image, e?.menuList]);

  @override
  bool isValidKey(Object? o) => o is RestaurantRecord;
}
