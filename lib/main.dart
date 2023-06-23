import 'package:flutter/material.dart';
import 'package:flutter_learning/Dr%20Prescription.dart';
import 'package:flutter_learning/Task_2.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class NoImages extends StatelessWidget {
  const NoImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final items = ['item 1', 'item 1', 'item 1', 'item 1', 'item 1'];
  String buttonName = 'Click';
  int _selectedItems = 0;
  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'call '),
          ],
          currentIndex: _selectedItems,
          onTap: (int index) {
            setState(
              () {
                _selectedItems = index;
                _pageController.animateToPage(_selectedItems,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.linear);
              },
            );
          },
        ),
        backgroundColor: Colors.blue[800],
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi There!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '21 Mar, 2023',
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: TextField(
                          cursorHeight: 25,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(),
                              hintText: 'Enter a search term',
                              fillColor: Colors.white,
                              filled: true),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How Do You Do',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 23,
                              color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: PageView(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            margin: EdgeInsets.all(5),
                            height: 95,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Center(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          'images/Ellipse 5.png',
                                          width: 70,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Text('Patient Name'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder:
                                                        (BuildContext context) {
                                                  return Prescription();
                                                }));
                                              },
                                              child: Text('Upload')),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      alignment: Alignment.bottomCenter,
                                      icon: Icon(Icons.arrow_forward_ios_sharp,
                                          color: Colors.blueAccent),
                                      onPressed: () {
                                        setState(
                                          () {
                                            buttonName = 'forward';
                                          },
                                        );
                                        Navigator.push(context,
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return Report();
                                        }));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                        child: Center(
                            child: Text(
                          '2nd page',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white70,
                              fontWeight: FontWeight.w900),
                        )),
                        color: Colors.amberAccent),
                    Container(
                        child: Center(
                            child: Text(
                          '3rd Page',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white70,
                              fontWeight: FontWeight.w900),
                        )),
                        color: Colors.pink),
                  ],
                  onPageChanged: (index) {
                    setState(() {
                      _selectedItems = index;
                    });
                  },
                  controller: _pageController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
