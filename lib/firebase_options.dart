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
    apiKey: 'AIzaSyAsSyRNgQyRO7UdKRYHht2rvdmYa3C1OI4',
    appId: '1:564791783960:web:820bbc88c388835835c96d',
    messagingSenderId: '564791783960',
    projectId: 'student-flutter-project',
    authDomain: 'student-flutter-project.firebaseapp.com',
    storageBucket: 'student-flutter-project.firebasestorage.app',
    measurementId: 'G-H60HTTC4S9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmJru3nL0awPnt3_nCRYIFaduejOf8khI',
    appId: '1:564791783960:android:41da037eae2c06e235c96d',
    messagingSenderId: '564791783960',
    projectId: 'student-flutter-project',
    storageBucket: 'student-flutter-project.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCThqFm-FTk-akHfV9B_MWPof22Bv0M5zo',
    appId: '1:564791783960:ios:564826613ea2c70135c96d',
    messagingSenderId: '564791783960',
    projectId: 'student-flutter-project',
    storageBucket: 'student-flutter-project.firebasestorage.app',
    iosBundleId: 'com.example.finle',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCThqFm-FTk-akHfV9B_MWPof22Bv0M5zo',
    appId: '1:564791783960:ios:564826613ea2c70135c96d',
    messagingSenderId: '564791783960',
    projectId: 'student-flutter-project',
    storageBucket: 'student-flutter-project.firebasestorage.app',
    iosBundleId: 'com.example.finle',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAsSyRNgQyRO7UdKRYHht2rvdmYa3C1OI4',
    appId: '1:564791783960:web:1d110bb7ea78e79735c96d',
    messagingSenderId: '564791783960',
    projectId: 'student-flutter-project',
    authDomain: 'student-flutter-project.firebaseapp.com',
    storageBucket: 'student-flutter-project.firebasestorage.app',
    measurementId: 'G-8LVF86C4DB',
  );

}