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
    apiKey: 'AIzaSyChY20mPYPyniKewT5gsJHYU2EqzbbDdNM',
    appId: '1:493824891811:web:f796a703075a88df70d816',
    messagingSenderId: '493824891811',
    projectId: 'spotify-8766f',
    authDomain: 'spotify-8766f.firebaseapp.com',
    storageBucket: 'spotify-8766f.firebasestorage.app',
    measurementId: 'G-6DGDMD81PN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxyQQGowIntrrh367_h-Zt45WD6C3XgRw',
    appId: '1:493824891811:android:de4534cfb127803270d816',
    messagingSenderId: '493824891811',
    projectId: 'spotify-8766f',
    storageBucket: 'spotify-8766f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBK9-f7Y64Hi9Gn-QMF8R2qNdPOE9hue8',
    appId: '1:493824891811:ios:ae04b0ca59a8a8f570d816',
    messagingSenderId: '493824891811',
    projectId: 'spotify-8766f',
    storageBucket: 'spotify-8766f.firebasestorage.app',
    iosBundleId: 'com.example.spotify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCBK9-f7Y64Hi9Gn-QMF8R2qNdPOE9hue8',
    appId: '1:493824891811:ios:ae04b0ca59a8a8f570d816',
    messagingSenderId: '493824891811',
    projectId: 'spotify-8766f',
    storageBucket: 'spotify-8766f.firebasestorage.app',
    iosBundleId: 'com.example.spotify',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyChY20mPYPyniKewT5gsJHYU2EqzbbDdNM',
    appId: '1:493824891811:web:2572553b275f0fa770d816',
    messagingSenderId: '493824891811',
    projectId: 'spotify-8766f',
    authDomain: 'spotify-8766f.firebaseapp.com',
    storageBucket: 'spotify-8766f.firebasestorage.app',
    measurementId: 'G-Y5TZSLB0PE',
  );
}
