import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:zuhry_invent/component/ListviewSquare_LL.dart';

class Loanlist extends StatefulWidget {
  const Loanlist({super.key});
  static String routeName = "/LoanList";
  @override
  _LoanlistState createState() => _LoanlistState();
}

class _LoanlistState extends State<Loanlist> {
  @override
  Widget build(BuildContext context) {
    final List _LoanList = [
      'History 1',
      'History 2',
      'History 3',
      'History 4',
      'History 5',
      'History 6',
      'History 7',
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Barang")),
      body: SingleChildScrollView(
          child: ListView.builder(
              itemCount: _LoanList.length,
              itemBuilder: (context, index) {
                return MySquare_LL(child: _LoanList[index]);
              })),
    );
  }
}
