import 'package:flutter/material.dart';

import 'Widgets/TaskList.dart';
import 'Widgets/taskadd.dart';
import 'models/task.dart';

class HomePage extends StatefulWidget {
  



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    List<Tasks> todos =[
    Tasks(name:'Click on the button below To add a Task'),
    Tasks(name: 'To add a Task'),
    Tasks(name: 'what the fuck'),
  ];
  Widget buildBottomSheet(BuildContext context){
  return AddTask((newTaskTitle){
    setState(() {
       todos.add(Tasks(name: newTaskTitle,));
    });
    Navigator.pop(context);
                   
                  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: (){
            showModalBottomSheet(context: context, builder: buildBottomSheet);
          },
                  child: AddButton(),
        ),
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //HEADER
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40,60,40,20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Todo',style: TextStyle(color: Colors.white,fontSize: 30),),
                Icon(Icons.settings,color: Colors.white,)
              ],
            ),
          ),
        ),
        //DIV
        Divider(
            color: Colors.white,
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),

          //BODY
          Expanded(
            
            child: Container(
              padding: EdgeInsets.all(16),
              child: TaskList(todos),
            ))
        
      ],
      ),
      
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Center(child: Text('Add Task',style: TextStyle(color: Colors.black),)),
          );
  }
}

