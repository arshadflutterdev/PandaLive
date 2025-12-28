import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(appBar: AppBar(title: Text("Explorer"))),
      onWillPop: () async {
        return false;
      },
    );
  }
}
