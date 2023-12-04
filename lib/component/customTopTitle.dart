import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zuhry_invent/screen/ListLoan.dart';
import 'package:zuhry_invent/screen/notifPage.dart';

class TopTitle extends StatelessWidget {
  static String routeName = "/notif";
  final String thistext;
  final Color thiscolor;
  const TopTitle({Key? key, required this.thistext, required this.thiscolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/notif.svg",
            color: thiscolor,
            height: 20,
            width: 20,
          ),
          onPressed: () => Navigator.pushNamed(context, NotifPage.routeName),
        ),
        Expanded(
          child: Text(
            thistext,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: thiscolor,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/listpinjaman.svg",
            color: thiscolor,
            height: 20,
            width: 20,
          ),
          onPressed: () => Navigator.pushNamed(context, Loanlist.routeName),
        ),
      ],
    );
  }
}
