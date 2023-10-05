class Movie {
  String name;
  String description;
  int rating;
  bool watched;
  List<String> genre;

  Movie({
    required this.name,
    required this.description,
    required this.rating,
    required this.genre,
    this.watched = false,
  });
}
