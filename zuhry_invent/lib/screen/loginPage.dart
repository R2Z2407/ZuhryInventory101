import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/homePage.dart';
import 'package:zuhry_invent/screen/signUpPage.dart';
import 'package:zuhry_invent/component/customButton.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String routeName = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool is_onpress = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ), //appbar
        body: Container(
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: Stack(
                children: [
                  // Positioned(
                  //     right: 0,
                  //     top: 0,
                  //     width: 150,
                  //     child: Container(
                  //       child: Image.asset('assets/svg/Atas Kanan.png'),
                  //     )),
                  // Positioned(
                  //     left: 0,
                  //     top: 0,
                  //     width: 260,
                  //     child: Container(
                  //       child: Image.asset('assets/svg/Atas Kiri.png'),
                  //     )),
                  Column(
                    children: [
                      const Text(
                        'Log In',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'NIP',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400),
                            ),
                            prefixIcon: Icon(Icons.person)),
                      ),
                      TextField(
                        obscureText: is_onpress,
                        decoration: InputDecoration(
                          label: const Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.remove_red_eye),
                              onPressed: () {
                                setState(() {
                                  is_onpress = !is_onpress;
                                });
                              }),
                        ),
                      ),
                      const SizedBox(height: 25),
                      CustomButton(
                        text: 'Log In',
                        onPressed: () => Navigator.popAndPushNamed(
                            context, HomePage.routeName),
                        height: 40,
                        width: 300,
                      ),
                      const SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Dont have an account?',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, SignUpPage.routeName);
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Coolors.primary),
                                ))
                          ])
                    ],
                  )
                ],
              )),
        ));
  }
}
