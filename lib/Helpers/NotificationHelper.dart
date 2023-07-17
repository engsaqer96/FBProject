import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationHelper {
   NotificationHelper._();
   static final FirebaseMessaging instance=FirebaseMessaging.instance;
   static init() async{
     _printToken();
     _onTokenRefresh();
     _requestPermission();
     _onMessageReceived();
   }
   static _printToken() async{
     String? token=await instance.getToken();
     print(token);
   }
   static Future<String?> getToken() async{
     return await instance.getToken();
   }
   static subscribeToTopic(String topic)async{
     await instance.subscribeToTopic(topic);
   }
   static _onTokenRefresh(){
     instance.onTokenRefresh
         .listen((fcmToken) {
       // TODO: If necessary send token to application server.

       // Note: This callback is fired at each app startup and whenever a new
       // token is generated.
     })
         .onError((err) {
       // Error getting token.
     });
   }
   static _requestPermission() async{

     NotificationSettings settings = await instance.requestPermission(
       alert: true,
       announcement: false,
       badge: true,
       carPlay: false,
       criticalAlert: false,
       provisional: false,
       sound: true,
     );

     print('User granted permission: ${settings.authorizationStatus}');
   }
   static _onMessageReceived(){
     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
       print('Got a message whilst in the foreground!');
       print('Message data: ${message.data}');

       if (message.notification != null) {
         print('Message also contained a notification: ${message.notification}');
       }
     });
   }
}