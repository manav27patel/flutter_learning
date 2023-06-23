import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SamplePosts> samplePosts = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: samplePosts.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.greenAccent,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'User id:${samplePosts[index].userId}',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text(
                            'id:${samplePosts[index].id}',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Title:${samplePosts[index].title}',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Body:${samplePosts[index].body}',
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Future<List<SamplePosts>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplePosts.add(SamplePosts.fromJson(index));
      }
      return samplePosts;
    } else {
      return samplePosts;
    }
  }
}

class SamplePosts {
  int? userId;
  int? id;
  String? title;
  String? body;

  SamplePosts({this.userId, this.id, this.title, this.body});

  SamplePosts.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}
