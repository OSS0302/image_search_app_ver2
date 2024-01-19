import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search_app_ver2/key.dart';
class PixabayApi {
  Future<Map<String, dynamic>> getResult (String query) async {
    final response = await http.get(Uri.parse('https://pixabay.com/api/?key=$key&q=$query&image_type=photo'));
      return jsonDecode(response.body);
  }
}