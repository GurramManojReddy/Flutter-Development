import 'package:flutter/material.dart';
import 'package:untitled/widgets/tasks_list.dart';
import 'package:untitled/screens/addTasks_screen.dart';
import 'package:untitled/Model/task.dart';

class TasksScreen extends StatefulWidget {


  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> Tasks = [
    Task('Buy Eggs'),
    Task('Buy Milk'),
    Task('Buy Beer'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context)=>AddTaskScreen(
                (newTitle){
                  setState((){
                    Tasks.add(newTitle);
                  });
                  Navigator.pop(context);
                },
            ));
          },
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            color: Colors.lightBlueAccent,
            padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 50.0),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(Tasks),
            ),
          ),
        ]),
      ),
    );
  }
}




