import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/bottom_sheet.dart';
import 'package:to_do_list/design.dart';
import 'package:to_do_list/togle_check.dart';
import 'package:to_do_list/data.dart';

class ToDoScreen extends StatefulWidget {
  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    /*
    ChangeNotifierProvider supply data every where.
     */
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => BottomSheet_(),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToDoTopBarDesign(),
            SizedBox(
              height: 15.0,
            ),
            /*
            passed list in everywhere
             */
            ToDoBottomDesign(),
          ],
        ),
      ),
    );
  }
}
