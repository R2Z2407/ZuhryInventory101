import 'package:flutter/widgets.dart';
import 'package:zuhry_invent/screen/homePage.dart';
import 'package:zuhry_invent/screen/loginPage.dart';
import 'package:zuhry_invent/screen/notifPage.dart';
import 'package:zuhry_invent/screen/signUpPage.dart';
import 'package:zuhry_invent/screen/detailPage.dart';
import 'package:zuhry_invent/screen/profilePage.dart';
import 'package:zuhry_invent/screen/historyPage.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  ProfilePage.routeName: (context) => ProfilePage(),
  HistoryPage.routeName: (context) => HistoryPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  LoginPage.routeName: (context) => LoginPage(),
  NotifPage.routeName: (context) => NotifPage(),
  DetailPage.routeName: (context) => DetailPage(),
};
