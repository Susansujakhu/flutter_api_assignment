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
        builder: (FeedController controller) => ListView.builder(
          itemCount: controller.cards.length,
          itemBuilder: (context, index) {
            print("Controller" + controller.l.toString());
            print("index" + index.toString());
            int leng = controller.l;
            return (index == leng)
                ? Container(
                    color: Colors.greenAccent,
                    child: FlatButton(
                      child: Text("Load More"),
                      onPressed: () {},
                    ),
                  )
                : ListBody(
                    children: controller.cards,
                  );
          },
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
