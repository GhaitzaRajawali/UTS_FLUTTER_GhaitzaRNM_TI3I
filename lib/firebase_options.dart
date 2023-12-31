// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDlTdUqPfwN-PWjhuIjNZ3sdUXgValfceA',
    appId: '1:676973129663:web:e1baad9889e27a28fbfb0a',
    messagingSenderId: '676973129663',
    projectId: 'utsproject-dbef9',
    authDomain: 'utsproject-dbef9.firebaseapp.com',
    storageBucket: 'utsproject-dbef9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANAwjiWCC9hjETK560bQzvyjX8nwrQfOo',
    appId: '1:676973129663:android:9e8865abe9818e61fbfb0a',
    messagingSenderId: '676973129663',
    projectId: 'utsproject-dbef9',
    storageBucket: 'utsproject-dbef9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8O3AAbrFVgLXkCeK7GL7IDAMiWwdz1So',
    appId: '1:676973129663:ios:d640c08110054ee6fbfb0a',
    messagingSenderId: '676973129663',
    projectId: 'utsproject-dbef9',
    storageBucket: 'utsproject-dbef9.appspot.com',
    iosBundleId: 'com.example.utsFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8O3AAbrFVgLXkCeK7GL7IDAMiWwdz1So',
    appId: '1:676973129663:ios:c0f7745897298363fbfb0a',
    messagingSenderId: '676973129663',
    projectId: 'utsproject-dbef9',
    storageBucket: 'utsproject-dbef9.appspot.com',
    iosBundleId: 'com.example.utsFlutter.RunnerTests',
  );
}
