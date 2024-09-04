import 'package:firebase_project/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

final ThemeData temaPadrao = ThemeData(
    primaryColor: Color(0xff9c27b0),
    hintColor: Color(0xff7b1fa2)
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAeQi62siDbiYJPSPGLOAQihKRSIxFSh4Y', //sua API Key
        appId: 'bd-projeto-flutter-b3489', //seu projeto ID
        messagingSenderId: 'sendid',
        projectId: 'bd-projeto-flutter-b3489', //seu projeto ID
        storageBucket: 'bd-projeto-flutter-b3489.appspot.com',
      )
  );

  runApp(MaterialApp(
    title: "Online Shop",
    home: Login(),
    theme: temaPadrao,
    debugShowCheckedModeBanner: false,
  ));
}