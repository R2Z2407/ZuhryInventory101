import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:zuhry_invent/screen/detailPage.dart';
import 'package:zuhry_invent/screen/historyPage.dart';
import 'package:zuhry_invent/screen/profilePage.dart';
import 'package:zuhry_invent/screen/inventoryPage.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routeName = "/home";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List page = [
    InventoryPage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    final Color inActiveColor = Coolors.primary;
    return Scaffold(
      body: page[index],
      bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   boxShadow: [
          //     BoxShadow(
          //       offset: const Offset(0, -15),
          //       blurRadius: 20,
          //       color: const Color(0xFFDADADA).withOpacity(0.15),
          //     ),
          //   ],
          //   borderRadius: const BorderRadius.only(
          //     topLeft: Radius.circular(40),
          //     topRight: Radius.circular(40),
          //   ),
          // ),
          child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            unselectedItemColor: Coolors.primary,
            selectedItemColor: Coolors.second,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/inventory.svg",
                  color: index == 0 ? Coolors.second : inActiveColor,
                ),
                label: 'Inventory',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/history.svg",
                  color: index == 1 ? Coolors.second : inActiveColor,
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/profile.svg",
                  color: index == 2 ? Coolors.second : inActiveColor,
                ),
                label: 'Profile',
              ),
            ],
          )),
    );
  }
}
