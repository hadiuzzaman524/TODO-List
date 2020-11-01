import 'package:flutter/material.dart';
import 'package:to_do_list/togle_check.dart';
import 'list_item.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'package:toast/toast.dart';

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
            callBack: (value) {
              /*
              Implement simple logic when change occur in checkbox then update
              the value using provider
               */
              Provider.of<TaskData>(context)
                  .updateToggle(Provider.of<TaskData>(context).itemList[index]);
            },
            deleteCall: () {
              Provider.of<TaskData>(context)
                  .updateTask(Provider.of<TaskData>(context).itemList[index]);
              Toast.show("Delete Successfully!", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
            },
          );
        },
        itemCount: Provider.of<TaskData>(context).itemList.length,
      ),
    );
  }
}
