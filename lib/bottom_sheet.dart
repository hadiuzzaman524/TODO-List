import 'package:flutter/material.dart';
import 'package:to_do_list/data.dart';
import 'package:to_do_list/list_view_item.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/togle_check.dart';

class BottomSheet_ extends StatelessWidget {


  String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Text(
                'ADD YOUR TASK!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.cyan,
                onChanged: (value) {
                  task = value;

                },
                decoration: InputDecoration(
                  focusColor: Colors.cyan,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              FlatButton(
                color: Colors.cyan,
                onPressed: () {
                  //callBack(task);print('hello world');
                Provider.of<TaskData>(context).addItem(task);
                Navigator.pop(context);

                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
