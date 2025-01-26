import 'package:assignment1_homescreen_design/features/home/widget/category_section.dart';
import 'package:assignment1_homescreen_design/features/home/widget/search_section.dart';
import 'package:flutter/material.dart';

import '../widget/greeting_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF11161F),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              //Greeting Section
              GreetingSection(
                name: "Rafsan",
              ),

              const SizedBox(
                height: 20,
              ),

              // Search Bar Section
              SearchSection(),
              const SizedBox(
                height: 20,
              ),
              CategorySection(),
            ],
          ),
        ),
      ),
    );
  }
}
