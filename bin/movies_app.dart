import 'dart:io';

import 'category.dart';
import 'movie.dart';

void main() {
  var actionCategory = category(
    "Action",
    [
      movie("Heart of Stone", 5.00),
      movie("Blue Beetle", 7.00),
      movie("Gran Turismo", 4.50)
    ],
  );

  var dramaCategory = category(
    "Drama",
    [
      movie(" Maestro", 6.50),
      movie("Asteroid City", 5.90),
      movie("Elemental", 4.70),
    ],
  );

  var categories = [actionCategory, dramaCategory];
  print("There are some available categories of movies:");
  for (var i = 0; i < categories.length; i++) {
    print('${i + 1}. ${categories[i].name}');
  }

  print("Pleses chooes the  categories of this movies");
  var userInput = int.parse(stdin.readLineSync() ?? "0") - 1;

  if (userInput >= 0 && userInput < categories.length) {
    var selectCategory = categories[userInput];

    print("Movies details in ${selectCategory.name}:");
    for (var i = 0; i < selectCategory.movies!.length; i++) {
      print("${i + 1}. ${selectCategory.movies![i].movietitle}");
    }
  }
}
