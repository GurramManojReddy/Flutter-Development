import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function AddTask;
  AddTaskScreen(this.AddTask);
  @override
  Widget build(BuildContext context) {
    String Message='';
    return Container(
      color: const Color(0XFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'ADD TASK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                Message=newText;
              },
            ),
            TextButton(
                onPressed: () {
                  AddTask(Message);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
              child: const Center(
                child: Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
