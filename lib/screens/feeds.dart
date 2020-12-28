import 'package:assignment_2/screens/feedController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: GetBuilder(
        init: FeedController(),
        builder: (FeedController controller) => Container(
          child: ListView(
            children: controller.cards,
          ),
        ),
      ),
    );
  }

  _appbar() {
    return AppBar(
      backgroundColor: Colors.green,
      title: Text("API"),
    );
  }
}
