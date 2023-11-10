// main.dart file


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/SignInScreen.dart';
import 'dart:io';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

// initializing the firebase app
//   await Firebase.initializeApp();
  // await Firebase.initializeApp();
  Platform.isAndroid?await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDcPLQzBUX-Gx_NIvcNdGdfyAo3-M7Tgxc",
        appId: "1:913477136017:android:c3eefbf976370d11571930",
        messagingSenderId: "913477136017",
        projectId: "pujakarmservice",
      )
  ):await Firebase.initializeApp();


// calling of runApp
  runApp(const GoogleSignIn());
}

class GoogleSignIn extends StatefulWidget {
  const GoogleSignIn({ super.key});
  @override
  _GoogleSignInState createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {
  @override
  Widget build(BuildContext context) {

    // we return the MaterialApp here ,
    // MaterialApp contain some basic ui for android ,
    return MaterialApp(

      //materialApp title
      title: 'GEEKS FOR GEEKS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      // home property contain SignInScreen widget
      home: SignInScreen(),
    );
  }
}
