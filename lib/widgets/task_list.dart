import 'package:flutter/material.dart';
import 'task_item.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/todo_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoData>(
      builder: (context, todoData, child) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 6,
          ),
          itemCount: todoData.todoCount,
          itemBuilder: (BuildContext context, int index) {
            return TaskItem(
              todoText: todoData.todoList[index].todoText,
              isComplete: todoData.todoList[index].isComplete,
              onChange: (value) {
                todoData.updateTodoCompletionState(index);
              },
              onDelete: () {
                todoData.deleteTask(index);
              },
            );
          },
        );
      },
    );
  }
}
