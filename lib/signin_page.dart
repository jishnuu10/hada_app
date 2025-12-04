import 'package:flutter/material.dart';
import 'package:hada_app/login_page.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFFF5FCFF), elevation: 0),
      body: Login(
        mainText: 'SIGN IN', 
        buttonText: 'SIGN IN',
        bottomText: 'You already have an account?',
        labelText: 'Login',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        ),
    );
  }
}

class Login extends StatelessWidget {
  final String mainText;
  final String buttonText;
  final String? bottomText;
  final String? labelText;
  final VoidCallback? onPressed;
  const Login({
    super.key,
    required this.mainText,
    required this.buttonText,
    this.bottomText,
    this.labelText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF5FCFF), Color(0xFFCCD7DD)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 43.0, right: 43.0),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 120.0,),
          children: [
            Text(
              mainText,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.8,
                    ),
                    children: [
                      TextSpan(text: 'You dont have the'),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: 'HADA',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(text: 'card?'),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Request Here',
                    style: TextStyle(
                      color: Color(0xFF0072BC),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Username/Email',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.2,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Password',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.2,
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ), // Color when not focused
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                suffixIcon: Icon(Icons.visibility, color: Color(0xFF0072BC)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 57.07,
                width: 341.26,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0072BC),
                    shape: RoundedRectangleBorder(),
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            if (bottomText != null && labelText != null)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bottomText!,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.8,
                      color: Color(0xFF000000),
                    ),
                  ),
                  TextButton(onPressed: onPressed, child: Text(labelText!)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
