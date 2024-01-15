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
    apiKey: 'AIzaSyAdYBCjkK8-rbNZDkcB742zVQ5wJ8CVTOE',
    appId: '1:652604473592:web:53ce4860c6e917335b3b0d',
    messagingSenderId: '652604473592',
    projectId: 'zoom-meet-5caeb',
    authDomain: 'zoom-meet-5caeb.firebaseapp.com',
    storageBucket: 'zoom-meet-5caeb.appspot.com',
    measurementId: 'G-152JZNNQC7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDM36UpZK8FpISlVr61d1BpHPQ0wU6WXVs',
    appId: '1:652604473592:android:80bd57b7f9beea505b3b0d',
    messagingSenderId: '652604473592',
    projectId: 'zoom-meet-5caeb',
    storageBucket: 'zoom-meet-5caeb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwLlGOTwYwxCmCPjbjfylG32N1vt0QZV8',
    appId: '1:652604473592:ios:bb84e6f4211954fe5b3b0d',
    messagingSenderId: '652604473592',
    projectId: 'zoom-meet-5caeb',
    storageBucket: 'zoom-meet-5caeb.appspot.com',
    iosClientId: '652604473592-06r2jmhvaadfqg2vcids7ikfhlrljpj9.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomMeet',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAwLlGOTwYwxCmCPjbjfylG32N1vt0QZV8',
    appId: '1:652604473592:ios:cc4b3c0c8b17f94b5b3b0d',
    messagingSenderId: '652604473592',
    projectId: 'zoom-meet-5caeb',
    storageBucket: 'zoom-meet-5caeb.appspot.com',
    iosClientId: '652604473592-aikhlt4ifik2aaog4gp9h27cam05rt4k.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomMeet.RunnerTests',
  );
}
