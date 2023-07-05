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
    apiKey: 'AIzaSyDYBYhTNSayd4f2c8RCt83Nq4rwNBRZ-VU',
    appId: '1:1043484798465:web:123d8c4dd0793942db9a00',
    messagingSenderId: '1043484798465',
    projectId: 'portfolio-fweb',
    authDomain: 'portfolio-fweb.firebaseapp.com',
    storageBucket: 'portfolio-fweb.appspot.com',
    measurementId: 'G-DBML0Z8N0V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1JXeObxDCbY-VH9f-R9t1nc5rdS0ykzw',
    appId: '1:1043484798465:android:5feadf5b92fdef71db9a00',
    messagingSenderId: '1043484798465',
    projectId: 'portfolio-fweb',
    storageBucket: 'portfolio-fweb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCunkvAX5iUTGalwSI_rJuSV070vX2g9jM',
    appId: '1:1043484798465:ios:bd779d416056b658db9a00',
    messagingSenderId: '1043484798465',
    projectId: 'portfolio-fweb',
    storageBucket: 'portfolio-fweb.appspot.com',
    iosClientId: '1043484798465-rdfm424if68e6t2d0gofsrjp785mq3d8.apps.googleusercontent.com',
    iosBundleId: 'com.example.personalPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCunkvAX5iUTGalwSI_rJuSV070vX2g9jM',
    appId: '1:1043484798465:ios:bd779d416056b658db9a00',
    messagingSenderId: '1043484798465',
    projectId: 'portfolio-fweb',
    storageBucket: 'portfolio-fweb.appspot.com',
    iosClientId: '1043484798465-rdfm424if68e6t2d0gofsrjp785mq3d8.apps.googleusercontent.com',
    iosBundleId: 'com.example.personalPortfolio',
  );
}
