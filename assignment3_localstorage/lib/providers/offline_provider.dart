import 'package:assignment3_localstorage/models/post_model.dart';
import 'package:flutter/material.dart';

import '../services/api_service.dart';

class OfflineProvider with ChangeNotifier {
  List<PostModel> _posts = [];
  bool _isLoading = false;

  List<PostModel> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();
    _posts = await ApiService.fetchAndCacheData();
    _isLoading = false;
    notifyListeners();
  }
}
