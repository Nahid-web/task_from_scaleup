import 'package:flutter/material.dart';

import '../widget/greeting_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF11161F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              //Greeting Section
              GreetingSection(
                name: "Rafsan",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
