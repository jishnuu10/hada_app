import 'package:flutter/material.dart';
import 'package:hada_app/intro_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _page = [
    IntroPage(
      imagePath: 'images/hada-logo-white 1.png',
      gradient1: Color(0xFF000000),
      gradient2: Color(0xFF101010),
      imagePath2: 'images/Group 118.png',
      buttonColor: Colors.black,
      headingColor: Colors.white,
      subheadingColor: Colors.white,
      rqtextColor: Color(0xFFD6A84B),
      hadatextColor: Color(0xFFD4D6D7),
    ),
    IntroPage(
      imagePath: 'images/hada-logo-white 1 (1).png',
      gradient1: Color(0xFFFFFFFF),
      gradient2: Color(0xFFFFFFFF),
      imagePath2: 'images/Group 118 (1).png',
      buttonColor: Colors.black,
      headingColor: Colors.black,
      subheadingColor: Colors.black,
      rqtextColor: Color(0xFF0B0B0B),
      hadatextColor: Color(0xFF6F6F6F),
    ),
    IntroPage(
      imagePath: 'images/hada-logo-white 1 (2).png',
      gradient1: Color(0xFF5FCBFF),
      gradient2: Color(0xFF75D2FF),
      imagePath2: 'images/Group 118 (2).png',
      buttonColor: Colors.blue,
      headingColor: Colors.white,
      subheadingColor: Colors.white,
      rqtextColor: Color(0xFF0072BC),
      hadatextColor: Color(0xFF6697B7),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _page.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) => _page[index],
          ),
          Positioned(
            bottom: 220,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: _page.length,
                effect: WormEffect(
                  spacing: 16,
                  dotHeight: 13,
                  dotWidth: 13,
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

