import 'package:assignment_2/screens/detailedPage.dart';
import 'package:assignment_2/screens/feedmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardsFeed extends StatelessWidget {
  final FeedModel feedModel;
  CardsFeed(this.feedModel);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(DetailedPage(feedModel.id));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            _movieCard(),
          ],
        ),
      ),
    );
  }

  Widget _movieCard() {
    return Card(
      child: _content(),
    );
  }

  Widget _content() {
    return Column(
      children: [
        Text(feedModel.title),
        Text(
          feedModel.year.toString(),
        ),
        Image.network(feedModel.bgImage)
      ],
    );
  }
}
