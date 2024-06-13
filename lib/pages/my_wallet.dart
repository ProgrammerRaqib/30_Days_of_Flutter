import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/buttom_navigation.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text("Testing Wallet"),
        backgroundColor: Colors.lightBlue
        ),


      bottomNavigationBar: const MyButtomNavigationBar(),
    


    drawer: const MyDrawer(),


    );
  }
}