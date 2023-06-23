import 'package:flutter/material.dart';
import 'package:flutter_learning/Task 4/InquiryData.dart';

class InquiryDisplay extends StatefulWidget {
  List<Data> data = [];

  InquiryDisplay({required this.data, Key? key}) : super(key: key);

  @override
  State<InquiryDisplay> createState() => _InquiryDisplay();
}

class _InquiryDisplay extends State<InquiryDisplay> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: ListView.separated(
            itemCount: widget.data.length,
            separatorBuilder: (context, index) => Container(
              height: 1,
              color: Colors.black,
              width: double.infinity,
            ),
            itemBuilder: (contex, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsetsDirectional.only(
                    top: 10, bottom: 10, end: 10, start: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data[index].customerInfo!.name!,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.data[index].customerInfo!.image!,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      widget.data[index].customerInfo!.mobile!,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      widget.data[index].customerInfo!.email!,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      widget.data[index].customerInfo!.latitude!,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      widget.data[index].customerInfo!.longitude!,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      widget.data[index].customerInfo!.address!,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      widget.data[index].productInfo!.productName!,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      widget.data[index].productInfo!.productPrice!.toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      widget.data[index].productInfo!.productImage!,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
