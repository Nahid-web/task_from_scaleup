import 'package:assignment2_fetchingdata/model/post_model.dart';
import 'package:assignment2_fetchingdata/services/api_service.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier {
  List<PostModel> _posts = [];
  bool _isLoading = false;

  List<PostModel> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();
    try {
      _posts = await ApiService.fetchPosts();
    } catch (e) {
      debugPrint('Error fetching posts: $e');
    }
    _isLoading = false;
    notifyListeners();
  }
}
