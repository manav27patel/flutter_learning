import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_learning/Task%203/ApiService2.dart';
import 'package:flutter_learning/Task%203/InsuranceApi.dart';
import 'package:flutter_learning/Task%203/InsuranceApiDisplay.dart';

class InsuranceLogin extends StatefulWidget {
  const InsuranceLogin({Key? key}) : super(key: key);

  @override
  State<InsuranceLogin> createState() => _InsuranceLoginState();
}

class _InsuranceLoginState extends State<InsuranceLogin> {
  void callInsuranceApi() async {
    log('message');
    ApiService2 service = ApiService2();
    InsuranceApi masters =
        await service.apiCallLogins({"page": 0, "seller_id": "3"});
    if (masters.result != null) {
      if (masters.success == 1) {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return InsuranceApiDisplay(result: masters.result!);
        }));
      }
      ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child:
              ElevatedButton(onPressed: callInsuranceApi, child: Text('Call'))),
    );
  }
}
