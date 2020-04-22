import 'package:flutter/foundation.dart';
import 'todo.dart';

class TodoData extends ChangeNotifier {
  List<Todo> todoList = List();

  void addTodo(String todoText) {
    todoList.add(Todo(todoText: todoText));
    notifyListeners();
  }

  void updateTodoCompletionState(int index) {
    todoList[index].isComplete = !todoList[index].isComplete;
    notifyListeners();
  }

  void deleteTask(int index) {
    todoList.removeAt(index);
    notifyListeners();
  }

  int get todoCount {
    return todoList.length;
  }
}