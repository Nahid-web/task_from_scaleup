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
        InkWell(
          borderRadius: BorderRadius.circular(50),
          splashColor: Colors.white.withAlpha(76),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(
              'assets/images/profile.jpg',
            ),
          ),
        ),
      ],
    );
  }
}
