import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search_app_ver2/key.dart';

class ImageApi {
  //  <Map<String,dynamic>> 을 한 이유는 DTO 을 안만들 수도 있기 떄문이 다, 의존하기 않기 때문데
  Future <Map<String,dynamic>> getImageResult (String query) async {
    final response =  await http.get(Uri.parse('https://pixabay.com/api/?key=$key&q=$query&image_type=photo'));
    return jsonDecode(response.body);

  }
}