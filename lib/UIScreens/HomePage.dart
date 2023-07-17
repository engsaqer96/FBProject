import 'package:firebaseproject/Controllers/APIController.dart';
import 'package:firebaseproject/Models/NotificationModel.dart';
import 'package:flutter/material.dart';
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
      body: Center(
        child: Container(
          color: Colors.red,
          child: ElevatedButton(
            child: Text('Send Notification'),
            onPressed: (){
              APIController.instance.setNotification(
                NotificationModel(destination: 'cWY09Nm_T1eN-gk55tdgVi:APA91bE4E2VDGQOph-4VS7-'
                    'aBqQt3y83xkSlyEwQO7O5HzvwW0_X64CH5WGR1p5MOLNTg5faXRcWxEIkR2P4adqjor268Uzk6'
                    'ednRcjWNhjXgC6KwSsIzoLrlYjCTkFYdQZcuNhMKe07',
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
