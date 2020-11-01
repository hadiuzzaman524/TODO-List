import 'package:flutter/material.dart';
import 'package:to_do_list/togle_check.dart';
import 'list_item.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class ListViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ToDoItem(
            title: Provider.of<TaskData>(context).itemList[index].title,
            isChecked: Provider.of<TaskData>(context).itemList[index].isCheck,
            /*   callBack: (value) {
              setState(() {
                widget.itemList[index].toggleCheck();
              });
            },*/
          );
        },
        itemCount: Provider.of<TaskData>(context).itemList.length,
      ),
    );
  }
}
