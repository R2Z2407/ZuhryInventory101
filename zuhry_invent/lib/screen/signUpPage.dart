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
  TextEditingController _nipController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
  late bool is_onpress = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              TextField(
                controller: _nipController,
                decoration: InputDecoration(
                  label: const Text(
                    'NIP',
                    style: TextStyle(
                        fontFamily: 'Nunito', fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  label: const Text(
                    'Name',
                    style: TextStyle(
                        fontFamily: 'Nunito', fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: is_onpress,
                decoration: InputDecoration(
                  label: const Text(
                    'Password',
                    style: TextStyle(
                        fontFamily: 'Nunito', fontWeight: FontWeight.w400),
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
        ),
      ),
    );
  }
}
