import 'package:flutter/material.dart';
import 'list_item.dart';

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
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            child: ListView(
              children: [
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
              ],
            ),
          )),
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
            '12 task ',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
