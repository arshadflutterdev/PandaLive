import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PayoutHistory extends StatefulWidget {
  const PayoutHistory({super.key});

  @override
  State<PayoutHistory> createState() => _PayoutHistoryState();
}

class _PayoutHistoryState extends State<PayoutHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Payout History")));
  }
}
