import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebaseproject/Providers/FBProvider.dart';
import 'package:firebaseproject/UIScreens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Helpers/NotificationHelper.dart';
import 'UIScreens/LoginSignupScreen.dart';
import 'firebase_options.dart';
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await NotificationHelper.init();
  runApp(ChangeNotifierProvider(
    create: (_) => FBProvider(),
    child: MaterialApp(
      home: LoginSignUpScreen(),
    ),
  ));
}
