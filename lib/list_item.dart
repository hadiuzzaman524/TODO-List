import 'package:flutter/material.dart';

class ToDoItem extends StatefulWidget {
  @override
  _ToDoItemState createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListTile(
        leading: Text(
          'Breakfast at 10am',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            decoration: isChecked? TextDecoration.lineThrough:null,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        trailing: CheckBoxItem(
          isChecked: isChecked,
          stateChange: (newValue){
            setState(() {
              isChecked=newValue;
            });
          },
        ),
      ),
    );
  }
}

class CheckBoxItem extends StatelessWidget {
  final isChecked;
  final Function stateChange;

  CheckBoxItem({@required this.isChecked, @required this.stateChange});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.cyan,
      value: isChecked, //isChecked,
      //Callback to stateChange
      onChanged: stateChange,
    );
  }
}
