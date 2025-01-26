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
