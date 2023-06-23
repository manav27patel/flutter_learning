import 'package:flutter/material.dart';
import 'package:flutter_learning/Simple%20Design%203.dart';

class pageview extends StatefulWidget {
  const pageview({Key? key}) : super(key: key);

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return pages();
                  }));
                },
                child: Text('aage uper niche hoga')),
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.deepPurple),
              ),
              Tab(
                icon: Icon(Icons.image, color: Colors.deepPurple),
              ),
              Tab(
                icon: Icon(Icons.settings, color: Colors.deepPurple),
              )
            ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(
                      child: Text(
                    '1st page',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
                  )),
                  color: Colors.red,
                ),
                Container(
                    child: Center(
                      child: Text(
                        '2nd page',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 50),
                      ),
                    ),
                    color: Colors.green),
                Container(
                    child: Center(
                      child: Text('3rd page',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 50)),
                    ),
                    color: Colors.purple)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
