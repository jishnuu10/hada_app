import 'package:flutter/material.dart';



class IntroPage extends StatelessWidget {
  final String imagePath;
  final Color gradient1;
  final Color gradient2;
  final String imagePath2;
  final Color? buttonColor;
  final Color? headingColor;
  final Color? subheadingColor;
  final Color? rqtextColor;
  final Color? hadatextColor;
  const IntroPage({
    super.key,
    required this.imagePath,
    required this.gradient1,
    required this.gradient2,
    required this.imagePath2,
    required this.buttonColor,
    required this.headingColor,
    required this.subheadingColor,
    required this.rqtextColor,
    required this.hadatextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [gradient1, gradient2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Center(child: Image.asset(imagePath, width: 51, height: 54)),
            SizedBox(height: 20),
            Text(
              'The future of Networking',
              style: TextStyle(
                color: headingColor,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Get more business opportunities',
              style: TextStyle(
                color: subheadingColor,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Image.asset(imagePath2, width: 337, height: 358.84),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: SizedBox(
                height: 48,
                width: 138,
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0xFF6F6F6F),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.8,
                  ),
                  children: [
                    TextSpan(text: 'You dont have the'),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'HADA',
                      style: TextStyle(
                        color: hadatextColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(text: 'card?'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              child: Text(
                'Request Here',
                style: TextStyle(color: rqtextColor, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
