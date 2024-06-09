import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  

int day=1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
backgroundColor: Colors.blue,
      ),
  body: Center(
    child: Container(
      child: Text('Day $day'),
      
      ),
  ),
  drawer: Drawer(),
);
  }
}