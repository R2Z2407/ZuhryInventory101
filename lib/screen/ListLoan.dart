import 'package:flutter/material.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';
import 'package:zuhry_invent/component/countItem.dart';
import 'package:zuhry_invent/component/customCheckbox.dart';
import 'package:zuhry_invent/component/customButton.dart';
import 'package:zuhry_invent/screen/homePage.dart';
import 'package:zuhry_invent/screen/historyPage.dart';

// import 'package:flutter/widgets.dart';

class Loanlist extends StatelessWidget {
  Loanlist({super.key});
  static String routeName = "/LoanList";
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    // final List _LoanList = [
    //   'Pinjaman 1',
    //   'Pinjaman 2',
    //   'Pinjaman 3',
    //   'Pinjaman 4',
    //   'Pinjaman 5',
    //   'Pinjaman 6',
    //   'Pinjaman 7',
    // ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Daftar Pinjaman"),
        backgroundColor: Coolors.primary,
      ),
      body: ListView(padding: EdgeInsets.all(25), children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Coolors.primary, width: 1)),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomCB(),
                    SizedBox(width: 15),
                    Container(
                      width: 150,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nama Barang",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Spacer(),
                    CountItem()
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Coolors.second, width: 1)),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomCB(),
                    SizedBox(width: 15),
                    Container(
                      width: 150,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Resitor 100K",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Spacer(),
                    CountItem()
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 15),
              CustomCB(),
              SizedBox(width: 15),
              Text('Check All'),
              Spacer(),
              CustomButton(
                text: 'Pinjam Barang Lain',
                onPressed: () =>
                    Navigator.pushNamed(context, HomePage.routeName),
                height: 40,
                width: 170,
                backcolor: Coolors.primary,
              ),
              SizedBox(
                width: 10,
              ),
              CustomButton(
                text: 'Pinjam',
                onPressed: () =>
                    Navigator.pushNamed(context, HistoryPage.routeName),
                height: 40,
                width: 100,
              ),
            ]),
      ),
    );
  }
}

class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({Key? key, required this.title, this.value = false});
}
