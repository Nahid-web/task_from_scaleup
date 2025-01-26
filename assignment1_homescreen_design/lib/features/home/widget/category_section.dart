import 'package:assignment1_homescreen_design/features/home/widget/category_chips.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "See More",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CategoryChips(),
        // display image in category
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/display_image.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
