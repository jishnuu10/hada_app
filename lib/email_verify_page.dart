import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailVerifyPage extends StatelessWidget {
  const EmailVerifyPage({super.key});

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
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 43.0, right: 43.0, top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verify your email',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Not now verify later',
                            style: TextStyle(
                              color: Color(0xff000000).withOpacity(0.6),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'skip now',
                              style: TextStyle(
                                color: Color(0xFF0072BC),
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Image.asset('images/Group 25.png',width: 286, height: 288,),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'We will send you one time password this email address',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff575555),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '( example123@gmail.com )',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            VerifyCode(),
                            VerifyCode(),
                            VerifyCode(),
                            VerifyCode(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 57.07,
                        width: 341.26,
                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF0072BC),
                                            shape: RoundedRectangleBorder(),
                                          ),
                                          child: Text(
                                            'Submit',
                                            style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),
                                          ),
                                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF14224A), width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF14224A), width: 0.5),
                ),
              ),
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
