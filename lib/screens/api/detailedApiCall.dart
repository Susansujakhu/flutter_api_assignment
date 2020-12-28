import 'dart:convert';

import 'package:assignment_2/screens/api/detail_Json.dart';
import 'package:http/http.dart';

class Detail {
  static Future<Movie> fetchDetail(id) async {
    String url = "https://yts.mx/api/v2/movie_details.json?movie_id=" + id;
    Response response = await get(url);

    Map main = jsonDecode(response.body);
    Map data = main['data'];
    Map movie = data['movie'];
    //print(movie);
    List<Torrent> torrents = List();
    for (var each in movie['torrents']) {
      Torrent model = Torrent(quality: each['quality'], size: each['size']);
      torrents.add(model);
    }
    Movie model = Movie(
      title: movie['title'],
      year: movie['year'],
      largeCoverImage: movie['large_cover_image'],
      rating: movie['rating'],
      runtime: movie['runtime'],
      //For Detailed Page
      descriptionIntro: movie['description_intro'],
      likeCount: movie['like_count'],
      downloadCount: movie['download_count'],
    );

    return (model);
  }
}
