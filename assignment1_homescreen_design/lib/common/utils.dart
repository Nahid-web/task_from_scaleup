import 'package:flutter/material.dart';

OutlineInputBorder borderLine({color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(
      color: color,
      width: 1,
    ),
  );
}

Map<String, String> trendingMovieImages = {
  "": "assets/images/trending_movies/trending_1.png",
  "Soul Mate": "assets/images/trending_movies/trending_2.png",
  "UB's Secret": "assets/images/trending_movies/trending_3.png",
  "Yes I Do": "assets/images/trending_movies/trending_4.png",
};

Map<String, String> recommendedMovieImages = {
  "Double Love": "assets/images/recommended_movies/recommended_1.png",
  "Curse Of The River": "assets/images/recommended_movies/recommended_2.png",
  "Sunita": "assets/images/recommended_movies/recommended_3.png",
};
Map<String, String> watchingMovieImages = {
  "Wednesday I Season = 1 | Episode -3 ":
      "assets/images/continue_watching/watching_1.png",
  "Emily in Paris | Season - 1 | Episode -1":
      "assets/images/continue_watching/watching_2.png",
};
