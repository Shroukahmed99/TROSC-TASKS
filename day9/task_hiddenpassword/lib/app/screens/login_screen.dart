import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moster_app/app/screens/Home_screen.dart';
import 'package:moster_app/app/widgets/icon_button.dart';
import 'package:moster_app/app/widgets/my_button.dart';
import 'package:moster_app/app/widgets/my_container.dart';
import 'package:moster_app/app/widgets/my_textfield.dart';

import '../widgets/my_sized_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: CircleAvatar(
                  backgroundColor: const Color(0xFF1F2022),
                  child: SvgPicture.asset(
                    'assets/icons/back.svg',
                    width: 24,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  children: [
                    Text(
                      'LET’S SIGN YOU IN',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontFamily: 'Teko',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Welcome back. You’ve been missed!',
                      style: TextStyle(
                        color: Color(0xFF808696),
                        fontSize: 14,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
              ),
              const myTextfield(
                text: 'Email',
                isPassword: false,
              ),
              mySizedBox(height: 24),
              const myTextfield(
                text: 'Password',
                isPassword: true,
              ),
              mySizedBox(height: 24),
              const Center(
                  child: myButton(text: 'Login', nextPage: Home_screen())),
              mySizedBox(height: 24),
              const Center(
                child: Text(
                  'Or login with',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF808797),
                  ),
                ),
              ),
              mySizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myContainer(
                    const iconButton(image_path: 'assets/icons/google.svg'),
                  ),
                  mySizedBox(width: 16),
                  myContainer(
                    const iconButton(image_path: 'assets/icons/twitter.svg'),
                  ),
                  mySizedBox(width: 16),
                  myContainer(
                    const iconButton(image_path: 'assets/icons/facebook.svg'),
                  ),
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
