import 'package:flutter/material.dart';
import 'package:to_do_list/bottom_sheet.dart';
import 'package:to_do_list/design.dart';
import 'package:to_do_list/togle_check.dart';

class ToDoScreen extends StatefulWidget {
  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  List<Toggle> itemList = [
    Toggle(title: 'Buy a Shart'),
    Toggle(title: 'Buy a car'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => BottomSheet_(
                /*
                return e callback value for add item in list
                 */
                callBack: (value) {
                  if(value!=null)
                  setState(() {
                    itemList.add(
                      Toggle(title: value),
                    );
                  });
                  Navigator.pop(context);
                },
              ),
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
            ToDoBottomDesign(
              itemlist: itemList,
            ),
          ],
        ),
      ),
    );
  }
}
