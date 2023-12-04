import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/loginPage.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
          (route) => false);
    });
    return Container(
      color: Coolors.primary,
      child: Stack(
        children: [
          Align(
            //image//
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/img_based_logo.png',
              width: 220,
              height: 220,
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              width: 250,
              child: Container(
                child: Image.asset('assets/svg/Atas Kiri.png'),
              )),
          Positioned(
              left: 0,
              bottom: 0,
              width: 200,
              child: Container(
                child: Image.asset('assets/svg/bawah.png'),
              )),
          Positioned(
              right: 0,
              top: 0,
              width: 100,
              child: Container(
                child: Image.asset('assets/svg/Atas Kanan.png'),
              )),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Powered By",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.none)),
                Image.asset(
                  'assets/images/img_second_logo.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
