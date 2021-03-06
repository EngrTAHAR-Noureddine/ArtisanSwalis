// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzDUD9A_-gSh_cZV80eJUi_HXspLn1Cmo',
    appId: '1:291655038631:android:3e1e09f6195812042b8d82',
    messagingSenderId: '291655038631',
    projectId: 'swalis-b3ac3',
    storageBucket: 'swalis-b3ac3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPS-OvDGxR4rxJ5UooD5GNylVK1KDbDFg',
    appId: '1:291655038631:ios:f40a8ffca7d235782b8d82',
    messagingSenderId: '291655038631',
    projectId: 'swalis-b3ac3',
    storageBucket: 'swalis-b3ac3.appspot.com',
    iosClientId: '291655038631-b8a9k6de1l5faoou1pturpjjc6gbg5uv.apps.googleusercontent.com',
    iosBundleId: 'com.example.artisanswalis',
  );
}
