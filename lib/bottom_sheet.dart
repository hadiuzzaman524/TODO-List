import 'package:flutter/material.dart';

class BottomSheet_ extends StatelessWidget {
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
                onChanged: (value){

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
                onPressed: () {},
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
