import 'package:flutter/material.dart';
import 'package:to_do_list/design.dart';

class ToDoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          onPressed: () {
            print('click');
          },
          child: Icon(Icons.add,color: Colors.white,size: 30,),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToDoTopBarDesign(),
            SizedBox(
              height: 15.0,
            ),
            ToDoBottomDesign(),
          ],
        ),
      ),
    );
  }
}
