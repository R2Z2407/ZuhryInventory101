import 'package:flutter/material.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';
import 'package:zuhry_invent/component/countItem.dart';
import 'package:zuhry_invent/component/customCheckbox.dart';

class ListPinjam extends StatelessWidget {
  static String routeName = "/listpinjam";
  final String thistext;
  const ListPinjam({
    Key? key,
    required this.thistext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: Coolors.primary, width: 1)),
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomCB(),
                    SizedBox(width: 15),
                    Container(
                      width: 150,
                      alignment: Alignment.centerLeft,
                      child: Text("thistext"),
                    ),
                  ])),
          Spacer(),
          CountItem()
        ],
      ),
    );
  }
}
