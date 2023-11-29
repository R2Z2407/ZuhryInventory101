import 'package:flutter/material.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class MySquare extends StatelessWidget {
  final String child;

  MySquare({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(
                0,
                3,
              ),
              color: Coolors.shadow.withOpacity(0.2),
            ),
          ],
          border: Border.all(
            color: Coolors.second,
            width: 1,
          ),
        ),
        child: Text(child, style: TextStyle()),
      ),
    );
  }
}
