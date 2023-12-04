import 'package:flutter/material.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class CustomCB extends StatefulWidget {
  const CustomCB({super.key});
  static String routeName = "/checkbox";
  @override
  State<CustomCB> createState() => _CustomCBState();
}

class _CustomCBState extends State<CustomCB> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        value: isChecked,
        activeColor: Coolors.second,
        onChanged: (newbool) {
          setState(() {
            isChecked = newbool;
          });
        },
      ),
    );
  }
}
