import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {
  GridviewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 10,
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
