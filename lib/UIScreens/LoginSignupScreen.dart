import 'package:flutter/material.dart';
class LoginSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login / Sign Up'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login functionality
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // TODO: Implement sign-up functionality
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}