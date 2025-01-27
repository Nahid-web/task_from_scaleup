import 'package:flutter/material.dart';

class ContinueWatchingSection extends StatelessWidget {
  final Map<String, String> movies;

  const ContinueWatchingSection({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    List movieImagesList = movies.entries.toList();
    return Column(
      children: [
        // Section Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Continue Watching',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'See More',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        // Horizontal Watch List with Progress
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movieImagesList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Stack(
                    children: [
                      // Movie Image Card
                      Container(
                        width: 170,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(movieImagesList[index].value),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // Progress Bar
                      Positioned(
                        bottom: 51,
                        child: Container(
                          width: 180,
                          height: 6,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: FractionallySizedBox(
                            alignment: Alignment.centerLeft,
                            widthFactor: 0.7,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 170,
                          child: Text(
                            movieImagesList[index].key != null
                                ? movieImagesList[index].key!
                                : "",
                            style: Theme.of(context).textTheme.titleSmall,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
