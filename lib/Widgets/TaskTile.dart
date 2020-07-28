import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  final bool isChecked ;
  
  final String Tasktitle;
  final Function checkBoxcallback;
  TaskTile({this.isChecked,this.Tasktitle,this.checkBoxcallback});

  // void checkToggle

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          Tasktitle ?? 'Task',
          style: TextStyle(
              color: Colors.white,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.black,
        checkColor: Colors.white,
        // onChanged: toggleCheckBoxstate,
        onChanged: checkBoxcallback,
     
        ));
  }
}


// (bool newValue) {
//     setState(() {
//       isChecked = newValue;
//     });
//   }