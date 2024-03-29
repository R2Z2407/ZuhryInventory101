import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/homePage.dart';
import 'package:zuhry_invent/screen/ListLoan.dart';
import 'package:zuhry_invent/component/customButton.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});
  static String routeName = "/DetailPage";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late bool is_onpress = true;
  void value0() {}
  int value = 0;
  void add() {
    setState(() {
      value++;
    });
  }

  void subtract() {
    if (value < 1) {
      return;
    }
    setState(() {
      value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(30),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: const Offset(
                          0,
                          3,
                        ),
                        color: Coolors.shadow.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 250,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 194, 193, 193),
                            )),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'Nama Barang',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ]))),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                  child: const Padding(
                padding: EdgeInsets.only(left: 35),
                child: Row(children: [
                  SizedBox(
                    width: 100,
                    child: Text('Tersedia',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            color: Coolors.second)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Text('50 Buah',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ))),
                  Divider(),
                  SizedBox(height: 4),
                ]),
              )),
              Divider(
                thickness: 2,
              ),
              Container(
                  child: const Padding(
                padding: EdgeInsets.only(left: 35),
                child: Row(children: [
                  SizedBox(
                    width: 100,
                    child: Text('Jenis Barang',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            color: Coolors.second)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Text('Kompenen Elektronik',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ))),
                ]),
              )),
              Divider(
                thickness: 2,
              ),
              Container(
                  child: const Padding(
                      padding: EdgeInsets.only(left: 35),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text('Letak Barang',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    color: Coolors.second)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 80),
                              child: Text('Rak 5 Laci D',
                                  style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                  ))),
                        ],
                      ))),
              Divider(
                thickness: 2,
              ),
            ],
          ),
        ]),
        bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            color: Coolors.primary,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //Kembali
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.5,
                  color: Coolors.third,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (Context) => HomePage()));
                    },
                    child: Ink(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Kembali",
                          style: TextStyle(
                              fontFamily: "Nurito",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Coolors.primary),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Coolors.third,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  //Kembali
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.5,
                  color: Coolors.primary,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.all(15),
                            color: Colors.white,
                            height: 209,
                            child: Column(children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      width: 150,
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Nama Barang",
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all()),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5),
                                          SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: FittedBox(
                                              child: FloatingActionButton.small(
                                                backgroundColor: Coolors.second,
                                                onPressed: () {
                                                  subtract();
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.minus,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            '$value',
                                          ),
                                          SizedBox(width: 10),
                                          SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: FittedBox(
                                              child: FloatingActionButton.small(
                                                backgroundColor: Coolors.second,
                                                onPressed: () {
                                                  add();
                                                },
                                                child: FaIcon(
                                                    FontAwesomeIcons.add),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText:
                                          "Ex: Tugas Akhir, Praktikum, Proyek",
                                      label: Text(
                                        'Keterangan Keperluan',
                                        style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w500),
                                      ))),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomButton(
                                      text: 'Pinjam',
                                      height: 40,
                                      width: 100,
                                      onPressed: () =>
                                          Navigator.popAndPushNamed(
                                              context, Loanlist.routeName),
                                    )
                                  ])
                            ]),
                          );
                        },
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Pinjam",
                        style: TextStyle(
                            fontFamily: "Nurito",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Coolors.third),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    //height: 60,
                    //width: MediaQuery.of(context).size.width * 0.5,
                    //decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // border: Border.all(
                    // color: Coolors.third,
                    // width: 1,
                  ),
                ),
                // ),
                //),
              ],
            )));
  }
}
