import 'package:flutter/material.dart';
import 'package:to_do_list/togle_check.dart';

class TaskData extends ChangeNotifier {
  List<Toggle> itemList = [
    Toggle(title: 'Buy a Shart'),
    Toggle(title: 'Buy a car'),
  ];

  addItem(String title) {
    if (title != null) {
      final newItem = Toggle(title: title);
      itemList.add(newItem);
      notifyListeners();
    }

  }


  updateToggle(Toggle toggle) {
    toggle.toggleCheck();
    notifyListeners();
  }
  updateTask(Toggle toggle){
    itemList.remove(toggle);
    notifyListeners();
  }
}
