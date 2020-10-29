import 'package:flutter/cupertino.dart';

class Toggle{

  String title;
  bool isCheck;

  Toggle({@required this.title, this.isCheck=false});

  toggleCheck(){
    isCheck=!isCheck;
  }


}