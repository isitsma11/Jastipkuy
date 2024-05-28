import 'package:flutter/material.dart';
import 'verify_otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your mobile number',
                  prefixText: '+62 ',
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Gender'),
                items: ['Male', 'Female'].map((String category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerifyOtpScreen()),
                    );
                  }
                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 10),
              Text('or'),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Sign up with Gmail
                },
                icon: Icon(Icons.email),
                label: Text('Sign up with Gmail'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Sign up with Facebook
                },
                icon: Icon(Icons.facebook),
                label: Text('Sign up with Facebook'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Sign up with Apple
                },
                icon: Icon(Icons.apple),
                label: Text('Sign up with Apple'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navigate to Sign In Screen
                },
                child: Text('Already have an account? Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
