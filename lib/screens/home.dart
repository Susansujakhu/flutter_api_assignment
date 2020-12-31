import 'package:assignment_2/screens/feeds.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Row(
        children: [Feeds()],
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
