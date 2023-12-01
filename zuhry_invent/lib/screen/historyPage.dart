import 'package:flutter/material.dart';
import 'package:zuhry_invent/component/customSearch.dart';
import 'package:zuhry_invent/component/ListviewSquare.dart';
import 'package:zuhry_invent/component/customTopTitle.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});
  static String routeName = "/history";
  @override
  Widget build(BuildContext context) {
    final List _histories = [
      'History 1',
      'History 2',
      'History 3',
      'History 4',
      'History 5',
      'History 6',
      'History 7',
    ];
    return Scaffold(
      appBar: _appBars(),
      body: ListView.builder(
          itemCount: _histories.length,
          itemBuilder: (context, index) {
            return MySquare(
              child: _histories[index],
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
          const SizedBox(height: 15),
          const TopTitle(
            thistext: 'History',
            thiscolor: Coolors.primary,
          ),
          const SizedBox(height: 15),
          CustomSearch(
            thistext: 'Cari peminjaman',
          ),
        ]),
      ),
    );
  }
}
