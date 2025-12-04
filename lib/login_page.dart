import 'package:flutter/material.dart';
import 'package:hada_app/signin_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5FCFF), 
        elevation: 0
        ),
      body: Login(mainText: 'Login your account', buttonText: 'LOGIN',)
        
    );
  }
}