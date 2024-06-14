import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> getUserRole() async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot userDoc = await _firestore.collection('Users').doc(user.uid).get();
      if (userDoc.exists) {
        return userDoc['Role'];
      }
    }
    return null;
  }

  Future<void> registerUser(String email, String password, String username) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _firestore.collection('New Users').doc(userCredential.user!.uid).set({
        'Email': email,
        'Password': password,
        'Role': 'Customer',
        'Username': username,
      });
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<Map<String, dynamic>>> fetchUsers() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('Users').get();
      return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
