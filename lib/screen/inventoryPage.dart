import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/gridview.dart';
import 'package:zuhry_invent/component/customSearch.dart';
import 'package:zuhry_invent/component/customTopTitle.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});
  static String routeName = "/incentoryPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBars(),
      body: GridviewPage(),
    );
  }

  PreferredSize _AppBars() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(140),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        decoration: _boxDecoration(),
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          const TopTitle(
            thistext: 'Zuhry Inventory',
            thiscolor: Colors.white,
          ),
          SizedBox(height: 15),
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
