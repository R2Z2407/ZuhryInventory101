import 'package:flutter/material.dart';
import 'package:zuhry_invent/routes.dart';
import 'package:zuhry_invent/screen/splashPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: splashscreen(),
      ),
      routes: routes,
    );
  }
}
