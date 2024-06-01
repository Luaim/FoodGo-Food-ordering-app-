import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAA5bH--YQ-cAXWg19lsN74A_ASf6hj2dc",
            authDomain: "group-28-mae-assignment.firebaseapp.com",
            projectId: "group-28-mae-assignment",
            storageBucket: "group-28-mae-assignment.appspot.com",
            messagingSenderId: "488559164182",
            appId: "1:488559164182:web:0ba52d96d09a8115c3ee37",
            measurementId: "G-RE1MJBJYHE"));
  } else {
    await Firebase.initializeApp();
  }
}
