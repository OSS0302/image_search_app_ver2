import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search_app_ver2/key.dart';

class ImageApi {
  Future<Map<String, dynamic>> getImageResult(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=$key&q=$query&image_type=photo'));
    final result = jsonDecode(response.body);
    return result;
  }
}
