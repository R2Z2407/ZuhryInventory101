import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/detailPage.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';


class GaleryPage extends StatelessWidget {
  final String image;
  final String Subject;
  final Int Quantity;
  const GaleryPage(
      {super.key,
      required this.image,
      required this.Subject,
      required this.Quantity});

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
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.5,
                      child: Image.asset(image),
                    ),
                    Text(
                      Subject, style: TextStyle(fontFamily: 'Nunito', fontSize: 14, fontWeight: FontWeight.w700, color: Coolors.second
                    )
                    ),
                    Text("Tersedia dalam $Quantity", style: TextStyle(fontFamily: 'Nunito', fontSize: 14, fontWeight: FontWeight.w700, color: Coolors.second
                    ) )
                  ],
                )),
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
