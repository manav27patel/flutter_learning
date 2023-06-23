import 'dart:convert';
import 'dart:developer';

import 'package:flutter_learning/Task%203/InsuranceApi.dart';
import 'package:http/http.dart' as http;

class ApiService2 {
  Future<InsuranceApi> apiCallLogins(Map<String, dynamic> param) async {
    Uri url = Uri.parse('https://dleny.net/HardRick/api/getInsuranceProvider');
    http.Response response = await http.post(url, body: param);
    log('Response Status:${response.statusCode}');
    log('Response body:${response.body}');
    return InsuranceApi.fromJson(jsonDecode(response.body));
  }
}
