import 'movie.dart';

class category {
  String? name;
  List<movie> ?movies;

  category(String name, List<movie> movies) {
    this.name = name;
    this.movies = movies;
  }
}
