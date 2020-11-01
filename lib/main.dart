import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/data.dart';
import 'package:to_do_list/screens/to_do_list.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ToDoScreen(),
      ),
    );
  }
}
