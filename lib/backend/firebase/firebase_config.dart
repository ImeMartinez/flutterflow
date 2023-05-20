import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBzymGNOHKYIsorxh5Lv7JdOIqGaIVivAA",
            authDomain: "proyectomovil-7a1c3.firebaseapp.com",
            projectId: "proyectomovil-7a1c3",
            storageBucket: "proyectomovil-7a1c3.appspot.com",
            messagingSenderId: "203774556095",
            appId: "1:203774556095:web:dc9dcc0a70940a78f7130a"));
  } else {
    await Firebase.initializeApp();
  }
}
