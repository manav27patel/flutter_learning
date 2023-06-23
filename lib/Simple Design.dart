import 'package:flutter/material.dart';
import 'package:flutter_learning/Expansion%20Panel.dart';
import 'package:flutter_learning/Simple%20Design%202.dart';
import 'package:flutter_learning/Tasks.dart';

class cava extends StatelessWidget {
  const cava({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/Screenshot 2023-03-16 103537.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: MediaQuery.of(context).size.height * 0.20),
                child: Column(
                  children: [
                    Image(image: AssetImage('images/ic_app_logo.png')),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.mail)),
                          hintText: 'username',
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          )),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.lock)),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.remove_red_eye)),
                          hintText: 'password',
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                        width: 350,
                        child: ElevatedButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return pageview();
                              }));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.black),
                            ))),
                    SizedBox(height: 5),
                    SizedBox(
                        width: 350,
                        child: ElevatedButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Tasks();
                              }));
                            },
                            child: Text(
                              'Lets Show Tasks',
                              style: TextStyle(color: Colors.black),
                            ))),
                    SizedBox(height: 10),
                    Text('Forgot Password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 10),
                    Text('Sign In',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(height: 10),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return items();
                          }));
                        },
                        child: Text('Items Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ))),
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
