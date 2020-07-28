import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:todo/models/task.dart';


class TaskList extends StatefulWidget {

  final List<Tasks> todos;
  TaskList(this.todos);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(Tasktitle: widget.todos[index].name,isChecked: widget.todos[index].isDone,
      checkBoxcallback :
(checkToggle) {
    setState(() {
      widget.todos[index].toggleDone();
      // isChecked = newValue;
    });
  }
      );
    },itemCount: widget.todos.length,
    );
  }
}


// children: [
//       TaskTile(Tasktitle: todos[0].name,isChecked: todos[0].isDone,),
//        TaskTile(Tasktitle: todos[1].name,isChecked: todos[1].isDone,),
//        TaskTile(Tasktitle: todos[2].name,isChecked: todos[2].isDone,),
//     ],