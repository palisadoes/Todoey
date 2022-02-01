import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, dataModel, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = dataModel.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTitle: task.name,
            checkboxCallback: (checkboxState) {
              dataModel.updateTask(task);
            },
          );
        },
        itemCount: dataModel.count(),
      );
    });
  }
}
