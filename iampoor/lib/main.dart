import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('I Am Poor'),
          ),
          backgroundColor: Colors.purple[500],
        ),
        body: Center(
          child: Image(image: AssetImage('images/coal.png')),
        ),
        backgroundColor: Colors.blue[50],
      ),
    ),
  );
}
