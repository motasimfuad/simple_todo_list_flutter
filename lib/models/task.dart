class Task {
  String name;
  bool isDone;

  Task({
    required this.name,
    required this.isDone,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}
