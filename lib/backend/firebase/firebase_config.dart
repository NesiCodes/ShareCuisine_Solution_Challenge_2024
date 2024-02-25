import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCoPDkN6PpiZ_WzZzw-epspumqQ3vf0etI",
            authDomain: "iouz-ff-proj.firebaseapp.com",
            projectId: "iouz-ff-proj",
            storageBucket: "iouz-ff-proj.appspot.com",
            messagingSenderId: "314664751078",
            appId: "1:314664751078:web:7f9776ddff8916e6a51027",
            measurementId: "G-0CX8FQJ4RF"));
  } else {
    await Firebase.initializeApp();
  }
}
