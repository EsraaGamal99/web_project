import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web_project/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCxobOqMIl2eZ7sF0J3cnNB5BdYhej_shk",
      authDomain: "flutter-web-3e57a.firebaseapp.com",
      projectId: "flutter-web-3e57a",
      storageBucket: "flutter-web-3e57a.firebasestorage.app",
      messagingSenderId: "634635243368",
      appId: "1:634635243368:web:302a3f01378a0d4e6f90dd",
      measurementId: "G-VK37TX59HL",
    ),
  );
  runApp(const MyApp());
}


