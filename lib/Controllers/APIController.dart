

import 'package:dio/dio.dart';
import 'package:firebaseproject/Models/NotificationModel.dart';

class APIController{
  static const BASE_URL='https://fcm.googleapis.com/fcm/';
  APIController._();
  static APIController instance=APIController._();

  Dio _getDio(){
    return Dio(BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
      headers: {
        'Authorization':'Bearer AAAAhmrIlFE:APA91bGxg1_w03USXS6RgNVExjOBOL_KosykApdT00f0B_Ah-GDpGTqLOkV2xsA6rr-TO6WAXNNzCMR_eVk5DUqhmVXEUvN7jVpgRo6KY6F33l1uNH3P4aXJQAi7juG4Cq8rppt03Q6c',
        'Content-Type':'application/json'
      }
    ));
  }

  setNotification(NotificationModel model) async{
    var response=await _getDio().post('send',
      data: model.toJson()
    );
    print('response:$response');
  }
}