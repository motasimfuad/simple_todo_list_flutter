import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkboxCallback;
  final longPressCallback;

  const TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
