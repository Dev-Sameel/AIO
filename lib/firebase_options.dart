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
    apiKey: 'AIzaSyBNWiXU8QFI5z1E96E23u5cL8bfk7gTvh0',
    appId: '1:851044920089:web:83c0a05e287a5df5337388',
    messagingSenderId: '851044920089',
    projectId: 'pushnotification-79d12',
    authDomain: 'pushnotification-79d12.firebaseapp.com',
    storageBucket: 'pushnotification-79d12.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOuILMCAUNOM5ydRYOW17XRLGh7WfPpmo',
    appId: '1:851044920089:android:3e8dfaed792c0ca5337388',
    messagingSenderId: '851044920089',
    projectId: 'pushnotification-79d12',
    storageBucket: 'pushnotification-79d12.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnsvvzWJrDxMmrDx6qIZ_eLA8QUX5aCpM',
    appId: '1:851044920089:ios:145b2be24c0caefc337388',
    messagingSenderId: '851044920089',
    projectId: 'pushnotification-79d12',
    storageBucket: 'pushnotification-79d12.appspot.com',
    iosBundleId: 'com.example.razorpay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnsvvzWJrDxMmrDx6qIZ_eLA8QUX5aCpM',
    appId: '1:851044920089:ios:66977a61b7ae163e337388',
    messagingSenderId: '851044920089',
    projectId: 'pushnotification-79d12',
    storageBucket: 'pushnotification-79d12.appspot.com',
    iosBundleId: 'com.example.razorpay.RunnerTests',
  );
}
