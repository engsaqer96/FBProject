import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

class FBProvider extends ChangeNotifier{

  FBProvider() {
    print('test');
  }

  printToken() async{
     String? token=await FirebaseMessaging.instance.getToken();
     print(token);
  }

}
