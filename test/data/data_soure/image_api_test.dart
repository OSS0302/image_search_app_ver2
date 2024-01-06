
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_app_ver2/key.dart';
import 'package:http/http.dart' as http;

void main() {
  test('http 데이터 잘오는지 확인 ', () async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=$key&q=yellow+flowers&image_type=photo&pretty=true'));

    Map<String, dynamic> json = jsonDecode(response.body);

  });
}

