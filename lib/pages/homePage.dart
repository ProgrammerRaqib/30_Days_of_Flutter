import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

// ignore: must_be_immutable
class HomePage1 extends StatelessWidget {
  

int day=1;

  HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
backgroundColor: Colors.deepPurple,
      ),
  body: Center(
    // ignore: avoid_unnecessary_containers
    child: Container(
      child: Text('Day $day'),
      
      ),
  ),
  drawer: const MyDrawer(),
);
  }
}