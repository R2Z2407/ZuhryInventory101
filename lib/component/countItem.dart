// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountItem extends StatefulWidget {
  // int jumlah;

  const CountItem({super.key});
  static String routeName = "/CountItem";
  @override
  State<CountItem> createState() => _CountItemState();
}

class _CountItemState extends State<CountItem> {
  int jumlah = 0;

  void add() {
    setState(() {
      jumlah++;
    });
  }

  void subtract() {
    if (jumlah > 0) {
      setState(() {
        jumlah--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Row(
        children: <Widget>[
          SizedBox(width: 5),
          // ElevatedButton(onPressed: subtract, child: Text('-')),
          SizedBox(
            width: 30,
            height: 30,
            child: FittedBox(
              child: FloatingActionButton.small(
                backgroundColor: Coolors.second,
                onPressed: subtract,
                child: FaIcon(FontAwesomeIcons.minus),
              ),
            ),
          ),
          SizedBox(width: 15),
          Text('$jumlah'),
          SizedBox(width: 15),
          // ElevatedButton(onPressed: add, child: Text('+')),
          SizedBox(
            width: 30,
            height: 30,
            child: FloatingActionButton(
              backgroundColor: Coolors.second,
              onPressed: add,
              child: FaIcon(FontAwesomeIcons.add),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
//   CountItem({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
