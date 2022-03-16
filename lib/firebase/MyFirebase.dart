import 'dart:async';
import 'package:artisanswalis/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart'; // new
import 'package:flutter/material.dart';




class MyFirebase extends ChangeNotifier {
  MyFirebase() {
    init();
  }

  Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

}

