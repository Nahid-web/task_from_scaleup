import 'package:flutter/material.dart';

class GreetingSection extends StatelessWidget {
  final String name;
  const GreetingSection({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello $name',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Let's watch today",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Container(
          width: 70, // Outer container width
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withAlpha(76), // Shadow color
                blurRadius: 20, // Amount of blur
                offset: Offset(0, 0), // Offset in x and y directions
              ),
            ],
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              'assets/images/profile.jpg',
            ),
          ),
        ),
      ],
    );
  }
}
