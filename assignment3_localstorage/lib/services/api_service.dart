import 'dart:convert';

import 'package:assignment3_localstorage/models/post_model.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  static Future<List<PostModel>> fetchAndCacheData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        // Convert to List<Post>
        final List<PostModel> posts =
            data.map((json) => PostModel.fromJson(json)).toList();

        final box = Hive.box('cachedData');
        await box.put('posts', json.encode(data)); // Save as JSON string
        return posts;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      final box = Hive.box('cachedData');
      final String? cachedData =
          box.get('posts'); // Retrieve cached JSON string
      if (cachedData != null) {
        // Decode cached data into List<Post>
        final List<dynamic> jsonData = json.decode(cachedData);
        return jsonData.map((json) => PostModel.fromJson(json)).toList();
      } else {
        return [];
      }
    }
  }
}
