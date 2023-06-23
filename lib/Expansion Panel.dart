import 'package:flutter/material.dart';

class items extends StatefulWidget {
  const items({Key? key}) : super(key: key);

  @override
  State<items> createState() => _itemsState();
}

class _itemsState extends State<items> {
  final List<Item> items = List<Item>.generate(15, (int index) {
    return Item(header: 'Panel$index', body: 'This is item no.$index');
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: ExpansionPanelList.radio(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            items[index].isExpanded = !isExpanded;
          });
        },
        children: items.map<ExpansionPanel>((Item item) {
          return ExpansionPanelRadio(
            canTapOnHeader: true,
            value: item.header,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Card(
                child: ListTile(
                  title: Text(item.header),
                ),
              );
            },
            body: ListTile(
              title: Text(item.body),
              subtitle: Text('hi everyone'),
              trailing: Icon(Icons.delete, color: Colors.grey),
              onTap: () {
                setState(() {
                  items.removeWhere((Item currentItem) => item == currentItem);
                });
              },
            ),
          );
        }).toList(),
      )),
    );
  }
}

class Item {
  String header;
  String body;
  bool isExpanded;

  Item({required this.header, required this.body, this.isExpanded = false});
}
