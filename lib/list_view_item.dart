import 'package:flutter/material.dart';
import 'package:to_do_list/togle_check.dart';
import 'list_item.dart';

class ListViewItem extends StatefulWidget {
  List<Toggle> itemList;

  ListViewItem({this.itemList});

  @override
  _ListViewItemState createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {

  String title = "hello";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ToDoItem(
              title: widget.itemList[index].title,
              isChecked: widget.itemList[index].isCheck,
              callBack: (value) {
                setState(() {
                  widget.itemList[index].toggleCheck();
                });
              });
        },
        itemCount: widget.itemList.length,
      ),
    );
  }
}
