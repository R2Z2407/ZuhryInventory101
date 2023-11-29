import 'package:flutter/material.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final VoidCallback? onPressed;
  const CustomButton(
      {Key? key,
      required this.text,
      this.height = 50,
      this.width = 100,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Coolors.second)),
    );
  }
}
