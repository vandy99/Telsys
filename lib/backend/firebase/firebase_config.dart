import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDcFAlp3rzg8DnQsNodrqwRifRKtebzJA4",
            authDomain: "telkes-51623.firebaseapp.com",
            projectId: "telkes-51623",
            storageBucket: "telkes-51623.appspot.com",
            messagingSenderId: "629764758925",
            appId: "1:629764758925:web:4d6eda06025d5c4103f1c4",
            measurementId: "G-SHGCF0G6V6"));
  } else {
    await Firebase.initializeApp();
  }
}
