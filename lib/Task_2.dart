import 'package:flutter/material.dart';
import 'package:flutter_learning/Profile.dart';
import 'package:flutter_learning/Simple%20Design.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report File'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Name:Harsh Thoriya',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                    Text('Age:40 years',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ],
                ),
                OutlinedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Profile();
                      }));
                    },
                    icon: Icon(Icons.unarchive_sharp, color: Colors.black),
                    label: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(15),
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Container(
                        child: Icon(
                      Icons.account_box,
                      color: Colors.white,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Text("BLOOD SUGAR FOR FASTING.PDF${[index]}",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.delete_forever,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 5,
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(
                bottom: 10, top: 10, end: 10, start: 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                'Remark (optional)',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            child: TextField(
              style: TextStyle(shadows: [
                Shadow(
                  blurRadius: 10.0,
                  // color of the shadow
                  color: Colors.lightBlueAccent,
                  offset: Offset(5, 5),
                )
              ]),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Remark If Any.......',
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(
            16, 10, 16, MediaQuery.of(context).viewPadding.bottom),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return cava();
            }));
          },
          child: Text('Upload & Transfer to Doctor'),
        ),
      ),
    );
  }
}
