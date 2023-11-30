import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/loginPage.dart';
import 'package:zuhry_invent/component/customButton.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static String routeName = "/signup";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late bool is_onpress = true;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Coolors.primary,
        body: Container(
            child: Stack(children: [
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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    child: Text('Sign Up',
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
                      const TextField(
                        decoration: InputDecoration(
                          label: const Text(
                            'Name',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          label: const Text(
                            'NIP',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
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
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.remove_red_eye),
                              onPressed: () {
                                setState(() {
                                  is_onpress = !is_onpress;
                                });
                              }),
                        ),
                      ),
                      SizedBox(height: 32),
                      CustomButton(
                        text: 'Sign Up',
                        onPressed: () =>
                            Navigator.pushNamed(context, LoginPage.routeName),
                        height: 40,
                        width: 300,
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 3),
                          Text('Already have an account?'),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context, LoginPage.routeName);
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Coolors.primary),
                              )),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ])));
  }
}
