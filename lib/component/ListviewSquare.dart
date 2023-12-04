import 'package:flutter/material.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class MySquare extends StatelessWidget {
  final String Subject;
  //final String Date;
  //final String Keterangan;

  MySquare({
    //required this.Keterangan,
    required this.Subject,
    //required this.Date
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(
                0,
                3,
              ),
              color: Coolors.shadow.withOpacity(0.2),
            ),
          ],
          border: Border.all(
            color: Coolors.second,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  Subject,
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      fontSize: 21,
                      color: Coolors.primary),
                ),
                //Text(
                //    Date,
                //    style: TextStyle(
                //        fontFamily: 'Nunito',
                //        fontWeight: FontWeight.w700,
                //        fontSize: 21,
                //        color: Coolors.primary),
                //  )
              ],
            ),
            Divider(
              thickness: 2,
            ),
            //Text(Keterangan,
            //    style: TextStyle(
            //        fontFamily: 'Nunito',
            //        fontWeight: FontWeight.w700,
            //        fontSize: 14,
            //        color: Coolors.primary)),
          ],
        ),
      ),
    );
  }
}
