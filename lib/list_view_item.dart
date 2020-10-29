import 'package:flutter/material.dart';
import 'package:to_do_list/togle_check.dart';
import 'list_item.dart';

class ListViewItem extends StatefulWidget {
  @override
  _ListViewItemState createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  List<Toggle> itemList = [
    Toggle(title: 'Buy a Shart'),
    Toggle(title: 'Buy a car'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
        return ToDoItem(
              title: itemList[index].title,
              isChecked: itemList[index].isCheck,
              callBack: (value) {
                setState(() {
                  itemList[index].toggleCheck();
                });
              });
        },
        itemCount: itemList.length,
      ),
    );
  }
}
