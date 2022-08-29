import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String message;
  final Function checkBoxCallBack;
  TaskTile(this.message, this.isChecked,this.checkBoxCallBack);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        message,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack(),
    ),
    );
  }
}
