import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/detailPage.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class GaleryPage extends StatelessWidget {
  const GaleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Card> itemList = List.generate(10, (index) {
      return Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: ClipRRect(
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (Context) => DetailPage()));
            },
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Coolors.second,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      );
    });

    return GridView.builder(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return itemList[index];
      },
    );
  }
}
