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

  TextEditingController _NIPcontroller = TextEditingController();
  TextEditingController _PassControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Coolors.primary,
      body: Container(
          child: Stack(
        children: [
          Positioned(
              right: 0,
              top: 0,
              width: 150,
              child: Container(
                child: Image.asset('assets/svg/Atas Kanan.png'),
              )),
          Positioned(
              left: 0,
              top: 0,
              width: 260,
              child: Container(
                child: Image.asset('assets/svg/Atas Kiri.png'),
              )),
          //Positioned(child: Text('Login')),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: deviceHeight * 0.23,
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerRight,
                  child: Text('Zuhry Inventory',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      )),
                ),
                Container(
                    height: deviceHeight * 0.17,
                    padding: EdgeInsets.all(30),
                    alignment: Alignment.bottomLeft,
                    child: Text('Welcome',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ))),
                Container(
                  height: deviceHeight * 0.6,
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                      )),
                  child: Column(
                    children: [
                      const Text(
                        'Log In',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      TextField(
                        controller: _NIPcontroller,
                        decoration: InputDecoration(
                            label: Text(
                              'NIP',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w500),
                            ),
                            prefixIcon: Icon(Icons.person)),
                      ),
                      TextField(
                        controller: _PassControler,
                        obscureText: is_onpress,
                        decoration: InputDecoration(
                          label: const Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500),
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
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
