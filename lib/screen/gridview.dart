import 'package:flutter/material.dart';
import 'package:zuhry_invent/Data/database.dart';
import 'package:zuhry_invent/screen/gridview.dart';

class GridviewPage extends StatelessWidget {
  final List Barang = [
    gvpg(Subject: 'Resistor', Image: 'assets/database/resistor.png'),
    gvpg(Subject: 'Resistor', Image: 'assets/database/resistor.png'),
  ];
  GridviewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: Barang.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                height: 60,
                width: 60,
                color: Colors.blueAccent,
              ),
            );
          }),
    );
  }
}
