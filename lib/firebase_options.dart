// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBFSoHmCzefyvmt6IXKmaSzFzK9O2jDzbI',
    appId: '1:417087416398:web:7c9f46e986b2b5af96bb1f',
    messagingSenderId: '417087416398',
    projectId: 'flutter-fc15f',
    authDomain: 'flutter-fc15f.firebaseapp.com',
    storageBucket: 'flutter-fc15f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSgVGOybRZ4ZUy9rkcqzBaquC8g4E1n5A',
    appId: '1:417087416398:android:a42d3f2da6b23bd796bb1f',
    messagingSenderId: '417087416398',
    projectId: 'flutter-fc15f',
    storageBucket: 'flutter-fc15f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwbgRl_a62VbFZpPDvCqZi5tSTa0Y_y2M',
    appId: '1:417087416398:ios:ac45e7f544c553f496bb1f',
    messagingSenderId: '417087416398',
    projectId: 'flutter-fc15f',
    storageBucket: 'flutter-fc15f.appspot.com',
    iosBundleId: 'com.example.learning',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAwbgRl_a62VbFZpPDvCqZi5tSTa0Y_y2M',
    appId: '1:417087416398:ios:ac45e7f544c553f496bb1f',
    messagingSenderId: '417087416398',
    projectId: 'flutter-fc15f',
    storageBucket: 'flutter-fc15f.appspot.com',
    iosBundleId: 'com.example.learning',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBFSoHmCzefyvmt6IXKmaSzFzK9O2jDzbI',
    appId: '1:417087416398:web:5d534b4341ce544896bb1f',
    messagingSenderId: '417087416398',
    projectId: 'flutter-fc15f',
    authDomain: 'flutter-fc15f.firebaseapp.com',
    storageBucket: 'flutter-fc15f.appspot.com',
  );
}
