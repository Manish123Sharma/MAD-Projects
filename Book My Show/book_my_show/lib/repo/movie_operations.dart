import 'package:book_my_show/models/movie.dart';

class movie_operations {
  _movie_operations() {}
  static movie_operations _movieOperations = movie_operations();

  static movie_operations getInstance() {
    return _movieOperations;
  }

  List<movie> getMovies() {
    return [
      movie(
          movie_name: "Avengers",
          movie_image:
              "https://static1.srcdn.com/wordpress/wp-content/uploads/2022/02/Marvels-Avengers-full-roster-2022.jpeg",
          movie_language: "English",
          movie_dimensions: "3D",
          movie_votes: 100,
          movie_percentage_votes: 87),
      movie(
          movie_name: "Avengers",
          movie_image:
              "https://terrigen-cdn-dev.marvel.com/content/prod/1x/avengersendgame_lob_crd_05.jpg",
          movie_language: "English",
          movie_dimensions: "3D",
          movie_votes: 100,
          movie_percentage_votes: 87),
      movie(
          movie_name: "Avengers",
          movie_image:
              "https://terrigen-cdn-dev.marvel.com/content/prod/1x/avengersendgame_lob_crd_05.jpg",
          movie_language: "English",
          movie_dimensions: "3D",
          movie_votes: 100,
          movie_percentage_votes: 87),
      movie(
          movie_name: "Avengers",
          movie_image:
              "https://terrigen-cdn-dev.marvel.com/content/prod/1x/avengersendgame_lob_crd_05.jpg",
          movie_language: "English",
          movie_dimensions: "3D",
          movie_votes: 100,
          movie_percentage_votes: 87),
      movie(
          movie_name: "Avengers",
          movie_image:
              "https://terrigen-cdn-dev.marvel.com/content/prod/1x/avengersendgame_lob_crd_05.jpg",
          movie_language: "English",
          movie_dimensions: "3D",
          movie_votes: 100,
          movie_percentage_votes: 87),
    ];
  }
}
