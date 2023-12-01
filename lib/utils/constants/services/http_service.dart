import 'dart:convert';

import 'package:hello_world/utils/constants/constant.dart';
import 'package:http/http.dart' as http;

class HttpService {
  Future get(endPoints) async {
    var response = await http.get(
      Uri.parse("${Constant.baseUrl}$endPoints"),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
