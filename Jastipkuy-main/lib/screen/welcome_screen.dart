import 'package:flutter/material.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),  // Replace with your logo path
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text('Create an account'),
            ),
            TextButton(
              onPressed: () {
                // Navigate to Login Screen (if you have one)
              },
              child: Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
