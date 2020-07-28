class Tasks {
  final String name;
  // final String desc;
  bool isDone;

  Tasks({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}