import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Hello'),
      trailing: Checkbox(value: false),
    );
  }
}
