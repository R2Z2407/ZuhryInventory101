import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/galeryPage.dart';
import 'package:zuhry_invent/component/customTopTitle.dart';
import 'package:zuhry_invent/component/customSearch.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class InventoryPage extends StatelessWidget {
  InventoryPage({super.key});
  static String routeName = "/inventory";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars(),
      body: const GaleryPage(),
    );
  }

  PreferredSize _appBars() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(140),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        decoration: _boxDecoration(),
        child: Column(children: [
          const TopTitle(
            thistext: 'Zuhry Inventory',
            thiscolor: Colors.white,
          ),
          SizedBox(height: 20),
          CustomSearch(thistext: 'Cari Barang'),
        ]),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return const BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
      gradient: LinearGradient(
        colors: [
          Coolors.primary,
          Coolors.primary,
        ],
      ),
    );
  }
}
