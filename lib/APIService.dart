import 'dart:convert';
import 'dart:developer';

import 'package:flutter_learning/loginApiMaster.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<LoginApiMaster> apiCallLogin(Map<String, dynamic> param) async {
    Uri url = Uri.parse('http://192.168.1.78:8000/harmis-classified/api/login');
    http.Response response = await http.post(url, body: param);
    log('Response Status:${response.statusCode}');
    log('Response body:${response.body}');
    return LoginApiMaster.fromJson(jsonDecode(response.body));
  }
}
