import 'package:assignment1_homescreen_design/features/home/widget/movie_card.dart';
import 'package:flutter/material.dart';

class MovieSection extends StatelessWidget {
  final String title;
  final Map<String, String> movieImages;

  const MovieSection({
    super.key,
    required this.title,
    required this.movieImages,
  });

  @override
  Widget build(BuildContext context) {
    List movieImagesList = movieImages.entries.toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name of Section Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'See More',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        // Horizontal Movie List
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movieImagesList.length,
            itemBuilder: (context, index) {
              return MovieCard(
                imageUrl: movieImagesList[index].value,
                title: movieImagesList[index].key,
              );
            },
          ),
        ),
      ],
    );
  }
}
