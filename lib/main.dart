import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_list_flutter/models/task_data.dart';
import 'package:simple_todo_list_flutter/screen/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
