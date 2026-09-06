class MoviesModel {
  int id;
  String title;
  String overview;
  String posterPath;
  double popularity;
  double? rating;
  String? releaseDate;

  MoviesModel(
      {required this.id, required this.title, required this.overview, required this.posterPath, required this.popularity, this.rating, this.releaseDate});

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'no title available',
      overview: json['overview'] ?? 'no overview available',
      posterPath: json['poster_path'] ?? 'https://share.google/AakERaFmXezoqLwq2',
      popularity: json['popularity']?.toDouble() ?? 0.0,
      rating: json['vote_average']?.toDouble(),
      releaseDate: json['release_date'] ?? null,
    );
  }

  String getPosterUrl() {
    return 'https://image.tmdb.org/t/p/w500$posterPath';
  }
}