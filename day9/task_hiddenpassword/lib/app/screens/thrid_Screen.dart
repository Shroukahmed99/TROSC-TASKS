import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moster_app/app/screens/login_screen.dart';
import 'package:moster_app/app/screens/signup_screen.dart';
import 'package:moster_app/app/widgets/my_button.dart';

import '../widgets/my_sized_box.dart';

class thirdScreen extends StatelessWidget {
  const thirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/pattern_1.svg',
                    color: const Color.fromARGB(255, 140, 136, 101),
                    width: 375,
                    height: 416,
                  ),
                  Positioned(
                    top: 40,
                    left: -10,
                    child: Image.asset(
                      'assets/images/illustration.png',
                      width: 350,
                      height: 350,
                    ),
                  ),
                ],
              ),
              const Text(
                'MONSTER LIVESCORE',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontFamily: 'Teko',
                  fontWeight: FontWeight.w600,
                ),
              ),
              // const SizedBox(height: 16),
              mySizedBox(height: 16),
              const SizedBox(
                width: 311,
                child: Text(
                  'We’d like to check that your preferences and details are accurate.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF808696),
                    fontSize: 14,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              // const SizedBox(height: 16),
              mySizedBox(height: 16),

              myButton(text: 'Get Started', nextPage: LoginScreen()),
              mySizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signupScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    border: Border.all(
                      color: const Color(0xFFF8FE11),
                      width: 2,
                    ),
                  ),
                  height: 48,
                  width: 311,
                  child: const Center(
                    child: Text(
                      'Sign for Monster Livescore',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
