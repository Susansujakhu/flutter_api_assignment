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
    this.movie,
  });

  Movie movie;
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
    this.downloadCount,
    this.likeCount,
    this.descriptionIntro,
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
  int downloadCount;
  int likeCount;
  String summary;
  String descriptionIntro;
  String descriptionFull;
  String synopsis;
  String ytTrailerCode;
  String language;

  String backgroundImage;
  String backgroundImageOriginal;
  String smallCoverImage;
  String mediumCoverImage;
  String largeCoverImage;
  List<Torrent> torrents;
  DateTime dateUploaded;
  int dateUploadedUnix;
}

class Torrent {
  Torrent({
    this.url,
    this.hash,
    this.quality,
    this.type,
    this.seeds,
    this.peers,
    this.size,
    this.sizeBytes,
    this.dateUploaded,
    this.dateUploadedUnix,
  });

  String url;
  String hash;
  String quality;
  String type;
  int seeds;
  int peers;
  String size;
  int sizeBytes;
  DateTime dateUploaded;
  int dateUploadedUnix;
}
