import 'package:assignment1_homescreen_design/common/utils.dart';
import 'package:assignment1_homescreen_design/features/home/widget/botto_nav_bar.dart';
import 'package:assignment1_homescreen_design/features/home/widget/category_section.dart';
import 'package:assignment1_homescreen_design/features/home/widget/continue_watching_section.dart';
import 'package:assignment1_homescreen_design/features/home/widget/movie_section.dart';
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
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: SingleChildScrollView(
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

                // Category Section
                CategorySection(),

                const SizedBox(
                  height: 20,
                ),

                //Trending Section
                MovieSection(
                  title: "Trending Section",
                  movieImages: trendingMovieImages,
                ),

                const SizedBox(
                  height: 20,
                ),

                // Continue Watching
                ContinueWatchingSection(movies: watchingMovieImages),
                const SizedBox(
                  height: 20,
                ),

                // Recommended For You
                MovieSection(
                  title: "Recommended For You",
                  movieImages: recommendedMovieImages,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
