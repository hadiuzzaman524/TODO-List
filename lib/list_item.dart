import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {

  final isChecked;
  final Function callBack;
  final Function deleteCall;
  final title;
  ToDoItem({this.title,this.isChecked,this.callBack,this.deleteCall});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListTile(
        onLongPress: deleteCall,
        leading: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            decoration: isChecked? TextDecoration.lineThrough:null,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        trailing:  Checkbox(
          activeColor: Colors.cyan,
          value: isChecked, //isChecked,
          //Callback to stateChange
          onChanged: callBack,
        ),
      ),
    );
  }
}


