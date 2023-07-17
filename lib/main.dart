import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebaseproject/Providers/FBProvider.dart';
import 'package:firebaseproject/UIScreens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print(await FirebaseMessaging.onMessage.listen((event) {

  }));
  runApp(ChangeNotifierProvider(
    create: (_) => FBProvider(),
    child: MaterialApp(
      home: HomePage(),
    ),
  ));
}
