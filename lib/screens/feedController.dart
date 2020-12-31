import 'package:assignment_2/screens/api/apicall.dart';
import 'package:assignment_2/screens/api/jsonplaceholder.dart';
import 'package:assignment_2/screens/cards.dart';
import 'package:assignment_2/screens/feedmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedController extends GetxController {
  bool isLoading = true;
  //String _title = "Don";
  //String _description = "This is short description";

  FeedController() {
    init();
  }

  List<Widget> _cards = [
    Center(
      child: CircularProgressIndicator(),
    ),
    Text("Hello World")
  ];

  List<Widget> get cards => _cards;
  List<Widget> tempList = List();
  int l = 0;
  init() async {
    await _loadCards();

    update();
  }

  Future<void> _loadCards() async {
    l++;
    if (l > 1) {
      tempList.removeLast();
    }

    List<Movie> modelList = await API.fetchPost(l);
    //print(modelList.length);
    for (int i = 0; i < modelList.length; i++) {
      //print(modelList[i].title);
      //print(modelList[i].year);

      //print(len);
      FeedModel model = FeedModel(
          id: modelList[i].id,
          title: modelList[i].title,
          year: modelList[i].year,
          bgImage: modelList[i].mediumCoverImage);
      tempList.add(CardsFeed(model));
    }
    tempList.add(Column(
      children: [
        RaisedButton(
          onPressed: () {
            _loadMore();
          },
          child: Text("Load More"),
        )
      ],
    ));
    _cards = tempList;
  }

  _loadMore() {
    print("onLoadMore");
    tempList.removeLast();
    tempList.add(CircularProgressIndicator());

    update();

    init();

    //load();

    print(l);

    return true;
  }
}
