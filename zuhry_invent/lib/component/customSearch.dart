import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zuhry_invent/screen/detailPage.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class CustomSearch extends StatelessWidget {
  static String routeName = "/search";
  final _searchText = TextEditingController();
  final String thistext;
  CustomSearch({
    Key? key,
    required this.thistext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextFormField(
        style: const TextStyle(
            color: Coolors.primary,
            fontFamily: 'Nunito',
            fontSize: 14,
            fontWeight: FontWeight.w500),
        controller: _searchText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: thistext,
          hintStyle: TextStyle(
              color: Coolors.primary,
              fontFamily: 'Nunito',
              fontSize: 14,
              fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Coolors.primary,
                height: 15,
                width: 15,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, DetailPage.routeName),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/close.svg",
                color: Coolors.primary,
                height: 18,
                width: 18,
              ),
              onPressed: () {
                _searchText.clear();
              },
            ),
          ),
        ),
      ),
    );
  }
}
