import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 12,
        children: [
          Chip(
            label: Text('All'),
            backgroundColor: Colors.redAccent,
            side: BorderSide.none,
            labelStyle: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Chip(
            label: Text('Action'),
            backgroundColor: Colors.grey[800],
            side: BorderSide.none,
            labelStyle: TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
          Chip(
            label: Text('Anime'),
            backgroundColor: Colors.grey[800],
            side: BorderSide.none,
            labelStyle: TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
          Chip(
            label: Text('Sci-fi'),
            backgroundColor: Colors.grey[800],
            side: BorderSide.none,
            labelStyle: TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
          Chip(
            label: Text('Thriller'),
            backgroundColor: Colors.grey[800],
            side: BorderSide.none,
            labelStyle: TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
