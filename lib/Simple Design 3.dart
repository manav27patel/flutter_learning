import 'package:flutter/material.dart';

class pages extends StatefulWidget {
  const pages({Key? key}) : super(key: key);

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  int _selectedItems = 0;
  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var arrNames = ['1', '2', '3', '4', '5'];
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        children: [
          ListView.builder(
            itemBuilder: (context, index) => Container(
              child: Card(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    arrNames[index],
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              color: Colors.transparent,
            ),
            itemCount: arrNames.length,
            itemExtent: 150,
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
              color: Colors.purple),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedItems = index;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_filled,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          )
        ],
        currentIndex: _selectedItems,
        onTap: (int index) {
          setState(
            () {
              _selectedItems = index;
              _pageController.animateToPage(_selectedItems,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            },
          );
        },
      ),
    );
  }
}
