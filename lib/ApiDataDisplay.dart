import 'package:flutter/material.dart';
import 'package:flutter_learning/loginApiMaster.dart';

class ApiDataDisplay extends StatefulWidget {
  Data data;

  ApiDataDisplay({required this.data, Key? key}) : super(key: key);

  @override
  State<ApiDataDisplay> createState() => _ApiDataDisplayState();
}

class _ApiDataDisplayState extends State<ApiDataDisplay> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.data.token.toString(),
                  style: TextStyle(fontSize: 25)),
              SizedBox(height: 10),
              Text(
                widget.data.id.toString(),
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                widget.data.name.toString(),
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                widget.data.email.toString(),
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                widget.data.mobile.toString(),
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                widget.data.gender.toString(),
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                widget.data.image.toString(),
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                widget.data.role.toString(),
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ));
  }
}
