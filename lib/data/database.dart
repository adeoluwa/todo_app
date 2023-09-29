import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference hive box
  final _appBox = Hive.box('appBox');

  // run this method if this is the first time opening this app
  void createInitialData() {
    toDoList = [
      ["Exercise", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _appBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _appBox.put("TODOLIST", toDoList);
  }
}
