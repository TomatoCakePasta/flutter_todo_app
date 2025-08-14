import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  // reference the hive box
  final _todoBox = Hive.box('todo_box');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Laundry", false],
    ];
  }

  // load the data from database
  void loadData() {
    // key
    toDoList = _todoBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _todoBox.put("TODOLIST", toDoList);
  }

}
