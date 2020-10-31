import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String data='Provider';

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<Data>(
      /*
      in version 4 builder: parameter can change with create:
       */
      create: (context)=>Data(),
      child: MaterialApp(
        home: Scaffold(
          appBar:AppBar(
            title: Text(data),
          ),
          body: First(),
        ),
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

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Third(),
          TextField(
            onChanged: (value){

              /*
              Provider.of<Data>(context).changeData(value) can be
              update new value every where.
               */
              Provider.of<Data>(context).changeData(value);
            },
          )

        ],
      )
    );
  }
}
class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      /*
      of() has optional property listen: , by default it's true, if declare false
      then not updated value
       */
      child: Center(child: Text(Provider.of<Data>(context).data)),
    );
  }
}

/*
This class notify whole app when some changes of data.
 */
class Data extends ChangeNotifier{
  String data='My name is hadi';

  changeData(String newData){
    data=newData;
    notifyListeners();
  }
}


