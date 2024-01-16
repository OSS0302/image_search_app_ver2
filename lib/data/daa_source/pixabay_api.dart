import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search_app_ver2/domain/image_item.dart';

import '../../key.dart';
class PixabayApi {
  Future<Map<String,dynamic>> getImageApi(String query) async {
    final response = await http.get(Uri.parse('https://pixabay.com/api/?key=$key&q=$query&image_type=photo'));
    print(response.bodyBytes);
    return jsonDecode(response.body);
}
}