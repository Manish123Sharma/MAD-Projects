import 'dart:ffi';

class movie {
  late String movie_image;
  late String movie_name;
  late String movie_language;
  late String movie_dimensions;
  late int movie_votes;
  late double movie_percentage_votes;

  movie({
    required this.movie_name,
    required this.movie_image,
    required this.movie_language,
    required this.movie_dimensions,
    required this.movie_votes,
    required this.movie_percentage_votes,
  }) {}
}
