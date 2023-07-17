import 'package:firebaseproject/Controllers/APIController.dart';
import 'package:firebaseproject/Models/NotificationModel.dart';
import 'package:firebaseproject/Providers/FBProvider.dart';
import 'package:flutter/material.dart';

import '../Helpers/NotificationHelper.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FCM'),
        actions: [
          IconButton(
            onPressed: () async{
               await NotificationHelper.subscribeToTopic('topic1');
            },
            icon: Icon(Icons.sunny),
          )
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: ElevatedButton(
            child: Text('Send Notification'),
            onPressed: () async{
              String? token=await NotificationHelper.getToken();
              APIController.instance.setNotification(
                NotificationModel(destination:token.toString(),
                title: 'From Mobile',
                body: 'Do u like it (;')
              );
            },
          ),
        ),
      ),
    );
  }
}
