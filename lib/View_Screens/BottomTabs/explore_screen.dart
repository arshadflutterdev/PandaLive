import 'package:flutter/material.dart';
import 'package:pandalive/Controllers/explorer_controller.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  ExplorerController explorerController = ExplorerController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(title: Text("Explorer")),
        body: ListView.builder(
          itemCount: explorerController.items.length,
          itemBuilder: (context, index) {
            return Container(color: Colors.red);
          },
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
