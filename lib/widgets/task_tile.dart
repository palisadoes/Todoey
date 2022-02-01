import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, viewModel, child) {
        return ListTile(
          title: Text(
            taskTitle,
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
            value: isChecked,
            onChanged: checkboxCallback,
            activeColor: Colors.lightBlueAccent,
            // )
          ),
          onLongPress: longPressCallback,
        );
      },
    );
  }
}
