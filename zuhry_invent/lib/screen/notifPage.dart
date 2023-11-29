import 'package:flutter/material.dart';
import 'package:zuhry_invent/component/ListviewSquare.dart';
import 'package:zuhry_invent/component/customTopTitle.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});
  static String routeName = "/notifpage";
  @override
  Widget build(BuildContext context) {
    final List _notification = [
      'Notification 1',
      'Notification 2',
      'Notification 3',
      'Notification 4',
      'Notification 5',
      'Notification 6',
    ];
    return Scaffold(
      appBar: _appBars(),
      body: ListView.builder(
          itemCount: _notification.length,
          itemBuilder: (context, index) {
            return MySquare(
              child: _notification[index],
            );
          }),
    );
  }

  PreferredSize _appBars() {
    return PreferredSize(
      preferredSize: Size.fromHeight(140),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        decoration: const BoxDecoration(color: Color(0x00000000)),
        child: Column(children: [
          const TopTitle(
            thistext: 'Notification',
            thiscolor: Coolors.primary,
          ),
        ]),
      ),
    );
  }
}
