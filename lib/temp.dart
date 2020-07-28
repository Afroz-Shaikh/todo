// import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/TaskTile.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: MediaQuery.of(context).size.height*0.10,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Center(child: Text('Add Text',style: TextStyle(color: Colors.black),)),
        ),
      ),
      backgroundColor: Colors.black,
      // appBar: Appbar(),
      body: Column(children:[
        // Appbar(),
               Scrollbar(
          
            child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int index = 1; index < 21; index++)
              Padding(
                padding: const EdgeInsets.fromLTRB(37,3,37,3),
                child: Container(
                  // color: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      border:
                          Border.all(width: 1.0, color: const Color(0xffffffff))),
                  // ,  Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                  child: TaskTile(),
                ),
              )
          ],
        )),
        ]
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text('Todo'),
          Icon(Icons.settings)

        ],
      ),
    );
  }
}


