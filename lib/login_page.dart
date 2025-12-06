import 'package:flutter/material.dart';
import 'package:hada_app/email_verify_page.dart';
import 'package:hada_app/signin_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFF5FCFF), Color(0xFFCCD7DD)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SafeArea(
            child: Login(mainText: 'Login your account', buttonText: 'LOGIN',
              elevatedButtonOnPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmailVerifyPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
