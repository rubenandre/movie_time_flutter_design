/// Conceptual Class Movie
/// Stores information about on movie
class Movie {
  /// Movie Tittle
  String __title;

  /// Image path to movie cover
  String __imagePath;

  /// Complete Constructor
  Movie(this.__title, this.__imagePath);

  /// Get the String that represents the path to the cover of movie
  String get getImagePath => __imagePath;

  /// Get the String that represents the movie title
  String get getTitle => __title;
}