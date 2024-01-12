
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test('http 데이터 잘오는지 확인 ', () async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/'));

    Map<String, dynamic> json = jsonDecode(response.body);

  });
}

