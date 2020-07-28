import 'package:flutter/material.dart';
// import 'package:todo/models/task.dart';
// import 'TaskTile.dart';
// import 'TaskList.dart';

class AddTask extends StatelessWidget {
  final Function addTaskCallback;
  AddTask(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {

    
    String newTaskTitle;
    return Container(
      child: Center(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            TextField(autofocus: true,autocorrect: true,textAlign: TextAlign.center,onChanged: (newText){
              newTaskTitle = newText;
            },),
            FlatButton(onPressed: (){
              addTaskCallback(newTaskTitle);
            },color: Colors.black, child: Text('Add',style: TextStyle(color: Colors.white),))
          ],
        ),
      )),
      
    );
  }
}