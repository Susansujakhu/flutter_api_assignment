import 'dart:convert';

import 'package:assignment_2/screens/api/jsonplaceholder.dart';
import 'package:http/http.dart';

class API {
  static Future<List<Movie>> fetchPost(int i) async {
    String page = i.toString();
    String url = "https://yts.mx/api/v2/list_movies.json?page=" + page;
    Response response = await get(url);

    Map main = jsonDecode(response.body);
    Map data = main['data'];
    List movies = data['movies'];
    List<Movie> responseModelList = List();
    for (var each in movies) {
      Movie model = Movie(
        id: each['id'],
        title: each['title'],
        year: each['year'],
        mediumCoverImage: each['medium_cover_image'],
      );
      responseModelList.add(model);
    }
    return responseModelList;
  }
}
