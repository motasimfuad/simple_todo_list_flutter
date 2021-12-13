import 'package:flutter/material.dart';
import 'package:simple_todo_list_flutter/models/task.dart';
import 'package:simple_todo_list_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy egg', isDone: false),
    Task(name: 'Buy Bread', isDone: false),
    Task(name: 'Work hard', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (isChecked) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
