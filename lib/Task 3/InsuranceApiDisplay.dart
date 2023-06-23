import 'package:flutter/material.dart';
import 'package:flutter_learning/Task 3/InsuranceApi.dart';

class InsuranceApiDisplay extends StatefulWidget {
  List<Result> result = [];

  InsuranceApiDisplay({required this.result, Key? key}) : super(key: key);

  @override
  State<InsuranceApiDisplay> createState() => _InsuranceApiDisplay();
}

class _InsuranceApiDisplay extends State<InsuranceApiDisplay> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: ListView.separated(
            itemCount: widget.result.length,
            separatorBuilder: (context, index) => Container(
              height: 1,
              color: Colors.black,
              width: double.infinity,
            ),
            itemBuilder: (contex, index) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  widget.result[index].image!,
                  width: 100,
                ),
                Text(
                  widget.result[index].name!,
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ));
  }
}
