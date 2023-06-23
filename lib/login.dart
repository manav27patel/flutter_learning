import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_learning/APIService.dart';
import 'package:flutter_learning/ApiDataDisplay.dart';
import 'package:flutter_learning/loginApiMaster.dart';
import 'package:flutter_learning/register.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final emailText = TextEditingController();
  final passwordText = TextEditingController();

  void callLoginApi() async {
    log('message');
    ApiService service = ApiService();
    LoginApiMaster master = await service
        .apiCallLogin({"email": emailText.text, "password": passwordText.text});
    if (master.data != null) {
      if (master.success == true) {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return ApiDataDisplay(data: master.data!);
        }));
      }
      ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 140, left: 30),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  children: [
                    TextField(
                      controller: emailText,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                    SizedBox(height: 35),
                    TextField(
                        controller: passwordText,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Submit',
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: callLoginApi,
                            icon:
                                Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                                fontSize: 15, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return register();
                            }));
                          },
                          child: const Text('SignUp',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b))),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                                fontSize: 15, color: Colors.white),
                          ),
                          onPressed: () {},
                          child: const Text('ForgotPassword',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
