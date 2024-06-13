import 'package:flutter/material.dart';
//import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/utils/routes.dart';

class MyButtomNavigationBar extends StatefulWidget {
  const MyButtomNavigationBar({super.key});

  @override
  State<MyButtomNavigationBar> createState() => _MyButtomNavigationBarState();
}

class _MyButtomNavigationBarState extends State<MyButtomNavigationBar> {
  
  int myIndex=0;
  
  @override
  Widget build(BuildContext context) {
    
    
    return BottomNavigationBar(
      
     //selectedIconTheme: const IconThemeData(color: Colors.lightBlue),
     showSelectedLabels: true,
     showUnselectedLabels: false,
   

   // backgroundColor: Colors.deepPurple,
    //selectedLabelStyle: const TextStyle(color: Colors.white),
    //unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    onTap: (value) async {

      setState(() {
        
        myIndex=value;
       

      });

      if(value==0){
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        
      }

        else if(value==1){

await Navigator.pushNamed(context, MyRoutes.wallterRoute);

        }

        else if(value==2){

await Navigator.pushNamed(context, MyRoutes.helpRoute);
        } 
      
    },

    currentIndex: myIndex,

    items: const [
BottomNavigationBarItem(
  icon: Icon(
    Icons.home,
    color: Colors.lightBlue,
    ),
    label: "Home",
    backgroundColor: Colors.lightBlue
    ),

BottomNavigationBarItem(
  icon: Icon(
    Icons.account_balance_wallet,
   color: Colors.lightBlue,
    ),
    label: "Balance"),

BottomNavigationBarItem(
  icon: Icon(
    Icons.help_center_rounded,
    color: Colors.lightBlue,
    )
    ,label: "Help Center"),

  ],
  );




  }
}