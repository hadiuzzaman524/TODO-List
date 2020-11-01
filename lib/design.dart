import 'package:flutter/material.dart';
import 'package:to_do_list/data.dart';
import 'package:to_do_list/list_view_item.dart';
import 'package:provider/provider.dart';

class ToDoBottomDesign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListViewItem(),
      ),
    );
  }
}

class ToDoTopBarDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.wrap_text,
              color: Colors.cyan,
              size: 30,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'TODO LIST',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            '${Provider.of<TaskData>(context).itemList.length} task ',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
