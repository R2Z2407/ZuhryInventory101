import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Loanlist extends StatefulWidget {
  const Loanlist({super.key});
  static String routeName = "/LoanList";
  @override
  _LoanlistState createState() => _LoanlistState();
}

class _LoanlistState extends State<Loanlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loans")),
    );
  }
}
