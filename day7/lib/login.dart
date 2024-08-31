import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/forget_password_screen.dart';
import 'package:login_ui/home_screen.dart';
import 'package:login_ui/signup_screen.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage("assets/back_ui.png"),
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Container(
            width: 320,
            height: 500,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 223, 204),
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(195, 0, 0, 0),
                    spreadRadius: 12,
                    blurRadius: 12,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.transparent,
                body: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/logo_ui.png"),
                          Text(
                            "Sign in",
                            style: GoogleFonts.jomolhari(fontSize: 32),
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            border: OutlineInputBorder(),
                            labelText: "email",
                            hintText: "ShroukKaoud@example.com"),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
                          if (!emailRegex.hasMatch(value)) {
                            return 'Enter a valid email address';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _email = value;
                        },
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        obscureText: obscureText,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 10),
                          border: const OutlineInputBorder(),
                          labelText: "password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              icon: Icon(obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const forgetPasswordScreen(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 160, top: 10),
                          child: Text(
                            'Forget Password',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      GestureDetector(
                          onTap: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              _formKey.currentState?.save();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const homeSreen(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black,
                            ),
                            height: 60,
                            width: 150,
                            child: const Center(
                              child: Text(
                                'sign in',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Create account',
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const signUpScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              '  sign up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}




//another way to add background image

// home: Scaffold(
//   appBar: AppBar(
//       title: Text('Set Background Image'),
//   ),
//   body: DecoratedBox(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("images/img.png"), fit: BoxFit.cover),
//           ),
//           child: Center(
//               child: FlutterLogo(
//             size: 200,
//           )),
//         ),
// ),