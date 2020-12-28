class JsonPlaceholderModel {
  String statusMessage;
  Data data;

  JsonPlaceholderModel({
    this.statusMessage,
    this.data,
  });
}

class Data {
  Data({
    this.movieCount,
    this.limit,
    this.pageNumber,
    this.movies,
  });

  int movieCount;
  int limit;
  int pageNumber;
  List<Movie> movies;
}

class Movie {
  Movie({
    this.id,
    this.url,
    this.imdbCode,
    this.title,
    this.titleEnglish,
    this.titleLong,
    this.slug,
    this.year,
    this.rating,
    this.runtime,
    this.genres,
    this.summary,
    this.descriptionFull,
    this.synopsis,
    this.ytTrailerCode,
    this.language,
    this.backgroundImage,
    this.backgroundImageOriginal,
    this.smallCoverImage,
    this.mediumCoverImage,
    this.largeCoverImage,
    this.dateUploaded,
    this.dateUploadedUnix,
  });

  int id;
  String url;
  String imdbCode;
  String title;
  String titleEnglish;
  String titleLong;
  String slug;
  int year;
  double rating;
  int runtime;
  List<String> genres;
  String summary;
  String descriptionFull;
  String synopsis;
  String ytTrailerCode;
  String language;

  String backgroundImage;
  String backgroundImageOriginal;
  String smallCoverImage;
  String mediumCoverImage;
  String largeCoverImage;

  DateTime dateUploaded;
  int dateUploadedUnix;
}
