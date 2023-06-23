import 'package:flutter/material.dart';
import 'package:flutter_learning/Task 4/ApiService3.dart';
import 'package:flutter_learning/Task%203/InsuranceLogin.dart';
import 'package:flutter_learning/Task%204/InquiryData.dart';
import 'package:flutter_learning/Task%204/InquiryDisplay.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  void manav() async {
    ApiService3 service = ApiService3();
    InquiryData dog = await service.apiCallLoginsss({});
    if (dog.data != null) {
      if (dog.success == true) {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return InquiryDisplay(data: dog.data!);
        }));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return InsuranceLogin();
                  }));
                },
                child: Text('Task3')),
            ElevatedButton(onPressed: manav, child: Text('Task4')),
          ],
        ),
      ),
    );
  }
}
