import 'dart:convert';

import 'package:assignment2_fetchingdata/model/post_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<PostModel>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => PostModel.fromJson(jsonEncode(json))).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
