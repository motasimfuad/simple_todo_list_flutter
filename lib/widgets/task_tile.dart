import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkboxCallback;

  const TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.amber,
        onChanged: checkboxCallback,
      ),
    );
  }
}
// setState(() {
//   isChecked = checked!;
// });
