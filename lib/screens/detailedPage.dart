import 'dart:ui';

import 'package:assignment_2/screens/api/detail_Json.dart';
import 'package:assignment_2/screens/api/detailedApiCall.dart';
import 'package:flutter/material.dart';

class DetailedPage extends StatefulWidget {
  final int id;

  DetailedPage(this.id);

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  String title, descriptionIntro, largeCoverImage, rate, runtime;
  double rating;

  int year, likeCount, downloadCount;
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    String idd = widget.id.toString();

    loadCards(idd).then((value) =>
        // {print(value.title), title = value.title, year = value.year});
        {
          setState(() {
            title = value.title;
            year = value.year;
            descriptionIntro = value.descriptionIntro;
            rating = value.rating;
            runtime = value.runtime.toString();
            likeCount = value.likeCount;
            downloadCount = value.downloadCount;
            largeCoverImage = value.largeCoverImage;
            rate = rating.toString();

            //print(rating);
            isLoading = false;
          })
        });

    //print(model);
    return Scaffold(
      appBar: _appbar(),
      body: _body(),
    );
  }

  Widget _appbar() {
    return AppBar(
      title: isLoading ? Text("Loading...") : Text(title),
    );
  }

  Widget _body() {
    return ListView(
      children: [
        isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(child: _detailCard())
      ],
    );
  }

  Widget _detailCard() {
    return Card(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.green.shade800,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.network(largeCoverImage),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text("Rating:" + rate), Text("Runtime:" + runtime)],
          ),
          RichText(
              text: TextSpan(
                  text: "Description:\n",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 20,
                  ),
                  children: [
                TextSpan(text: descriptionIntro, style: TextStyle(fontSize: 15))
              ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(likeCount.toString() + " Likes"),
              Text("Downloads: " + downloadCount.toString())
            ],
          )
        ],
      ),
    );
  }

  Future<Movie> loadCards(id) async {
    //print("modelList");
    Movie modelList = await Detail.fetchDetail(id);

    //print(modelList.length);
    //for (int i = 0; i < modelList.length; i++) {
    //print(modelList[i].title);
    //print(modelList[i].year);
    Movie model = Movie(
        title: modelList.title,
        year: modelList.year,
        descriptionIntro: modelList.descriptionIntro,
        rating: modelList.rating,
        runtime: modelList.runtime,
        likeCount: modelList.likeCount,
        downloadCount: modelList.downloadCount,
        largeCoverImage: modelList.largeCoverImage);

    //print(model.title);
    //bgImage: modelList[i].mediumCoverImage);
    //tempList.add(CardsFeed(model));
    return (model);
  }
}
