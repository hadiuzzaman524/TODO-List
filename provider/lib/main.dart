import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String data='Provider';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text(data),
        ),
        body: First(),
      ),
    );

  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Second(),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Third(),
    );
  }
}
class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('hello world')),
    );
  }
}


