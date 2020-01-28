import 'package:movie_time_flutter_design/model/Movie.dart';

/// Class responsable to store movies instances
class MoviesCollection {

  /// Collection of movies
  List<Movie> __moviesList = [
    Movie('Guardians of the Galaxy', 'assets/movie-1.jpg'),
    Movie('End Game', 'assets/movie-2.jpg'),
    Movie('Thor Ragnarok', 'assets/movie-3.jpg'),
    Movie('X-Men', 'assets/movie-4.jpg'),
  ];

  /// Method that add one [movie] to the collection [__moviesList]
  void addMovie(Movie movie) {
    __moviesList.add(movie);
  }

  /// Return the list of movies [__moviesList]
  Iterable<Movie> getAllMovies() {
    return __moviesList;
  }
}