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
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 25,
                  ),
            ),
            Text(
              "Let's watch today",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withAlpha(100),
                blurRadius: 30,
                offset: Offset(0, 0),
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
