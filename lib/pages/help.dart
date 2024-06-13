import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/buttom_navigation.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class MyHelp extends StatefulWidget {
  const MyHelp({super.key});

  @override
  State<MyHelp> createState() => _MyHelpState();
}

class _MyHelpState extends State<MyHelp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     
      appBar: AppBar(
        title: const Text("Testing Help"),
        backgroundColor: Colors.lightBlue
        ),

 drawer: const MyDrawer(),

    bottomNavigationBar: const MyButtomNavigationBar(),


    );
  }
}