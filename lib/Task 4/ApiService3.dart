import 'dart:convert';
import 'dart:developer';

import 'package:flutter_learning/Task%204/InquiryData.dart';
import 'package:http/http.dart' as http;

class ApiService3 {
  Future<InquiryData> apiCallLoginsss(Map<String, dynamic> param) async {
    Uri url =
        Uri.parse('http://192.168.1.181/activeecommerce/api/v2/inquiry-list');
    http.Response response =
        await http.post(url, body: {"page": 0.toString(), "seller_id": "3"});
    log('Response Status:${response.statusCode}');
    log('Response body:${response.body}');
    return InquiryData.fromJson(jsonDecode(response.body));
  }
}
