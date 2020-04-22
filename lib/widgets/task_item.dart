import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String todoText;
  final bool isComplete;
  final Function onChange;
  final Function onDelete;

  TaskItem({this.todoText, this.isComplete, this.onChange, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onLongPress: onDelete,
          child: Text(
            todoText,
            style: TextStyle(
              fontSize: 20,
              decoration: isComplete ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
        ),
        Checkbox(
          value: isComplete,
          onChanged: onChange,
        ),
      ],
    );
  }
}
