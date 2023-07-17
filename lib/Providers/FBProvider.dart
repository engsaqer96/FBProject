import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

class FBProvider extends ChangeNotifier{
  String? myToken;
  FBProvider() {
  }
  setToken(String? token){
    myToken=token;
    notifyListeners();
  }



}
