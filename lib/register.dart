import 'package:flutter/material.dart';
import 'package:flutter_learning/login.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 140, left: 30),
              child: Text(
                'Create\nAccount',
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
                    top: MediaQuery.of(context).size.height * 0.39),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Name',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                    SizedBox(height: 35),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                    SizedBox(height: 35),
                    TextField(
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
                          'Log In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return login();
                              }));
                            },
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
                              return login();
                            }));
                          },
                          child: const Text('SignIn',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline)),
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
