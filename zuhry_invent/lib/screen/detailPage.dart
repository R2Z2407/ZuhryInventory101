import 'package:flutter/material.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  static String routeName = "/detailpage";

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
        ]));
  }
}
