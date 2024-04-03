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
    apiKey: 'AIzaSyDBNHXYvwjW9MEbHFLBGVxqX13DxQQxnXg',
    appId: '1:112484776531:web:03145c4507a742e05f64a6',
    messagingSenderId: '112484776531',
    projectId: 'student-learn-5fcf1',
    authDomain: 'student-learn-5fcf1.firebaseapp.com',
    storageBucket: 'student-learn-5fcf1.appspot.com',
    measurementId: 'G-8SLCS0FTGK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPo2hq5SQdu3uJYWzOksE1XlpIvJ0MSAo',
    appId: '1:112484776531:android:54c5623fde8b3ca15f64a6',
    messagingSenderId: '112484776531',
    projectId: 'student-learn-5fcf1',
    storageBucket: 'student-learn-5fcf1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCQlh73Xw8Mk0s_J15dAixLaRkIVirhmo',
    appId: '1:112484776531:ios:54ca3aa061054b285f64a6',
    messagingSenderId: '112484776531',
    projectId: 'student-learn-5fcf1',
    storageBucket: 'student-learn-5fcf1.appspot.com',
    iosBundleId: 'com.example.firstApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCQlh73Xw8Mk0s_J15dAixLaRkIVirhmo',
    appId: '1:112484776531:ios:0161fe77b24300e45f64a6',
    messagingSenderId: '112484776531',
    projectId: 'student-learn-5fcf1',
    storageBucket: 'student-learn-5fcf1.appspot.com',
    iosBundleId: 'com.example.firstApp.RunnerTests',
  );
}