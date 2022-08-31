// ignore_for_file: sort_child_properties_last

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF05050C),
      body: SingleChildScrollView(
        child: Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: -50,
                  left: -100,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(202, 25, 212, 254),
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: -50,
                  child: Container(
                    width: 150,
                    height: 350,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(60, 65, 255, 151),
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
                  left: -100,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(62, 165, 69, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: -10,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(113, 245, 29, 29),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 80,
                      sigmaY: 80,
                    ),
                    child: Container(),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        _logo(),
                        const SizedBox(
                          height: 70,
                        ),
                        _loginLabel(),
                        const SizedBox(
                          height: 70,
                        ),
                        _labelTextInput("Roll number",
                            "Enter your nsut roll number", false),
                        const SizedBox(
                          height: 50,
                        ),
                        _labelTextInput("Password", "yourpassword", true),
                        const SizedBox(
                          height: 90,
                        ),
                        Container(
                          width: double.infinity,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Color(0xff008fff),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/home'),
                            child: Text(
                              "Login",
                              style: GoogleFonts.josefinSans(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        _signUpLabel("Don't have an account yet?",
                            const Color(0xff909090)),
                        const SizedBox(
                          height: 10,
                        ),
                        _signUpLabel("Contact admin", const Color(0xff164276)),
                        const SizedBox(
                          height: 139.3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style: GoogleFonts.josefinSans(
      textStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w800,
        fontSize: 18,
      ),
    ),
  );
}

// Widget _loginBtn() {
//   return Container(
//     width: double.infinity,
//     height: 60,
//     decoration: const BoxDecoration(
//       color: Color(0xff008fff),
//       borderRadius: BorderRadius.all(Radius.circular(10)),
//     ),
//     child: TextButton(
//       onPressed: () => Navigator.pushNamed(context, '/home'),
//       child: Text(
//         "Login",
//         style: GoogleFonts.josefinSans(
//           textStyle: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.w800,
//             fontSize: 24,
//           ),
//         ),
//       ),
//     ),
//   );
// }

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      TextField(
        obscureText: isPassword,
        cursorColor: Colors.red,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
              color: Color(0xffc5d2e1),
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffdfe8f3)),
          ),
        ),
      ),
    ],
  );
}

Widget _loginLabel() {
  return Center(
    child: Text(
      "NSUTX Login",
      style: GoogleFonts.josefinSans(
        textStyle: const TextStyle(
          color: Color(0xff164276),
          fontWeight: FontWeight.w900,
          fontSize: 34,
        ),
      ),
    ),
  );
}

Widget _logo() {
  return Center(
    child: SizedBox(
      child: Image.asset('assets/logo.png'),
      height: 80,
      width: 50,
    ),
  );
}
