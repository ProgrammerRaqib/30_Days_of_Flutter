import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
void main(){

runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp( 
     //  home:  HomePage1(),
       theme: ThemeData.light(),
      
    //initialRoute: "/home",
    routes: {
      "/" : (context)=> const loginPage(),
      MyRoutes.homeRoute: (context)=> HomePage1(),
      MyRoutes.loginRoute: (context)=>const loginPage()
      


    },

     );

  
  }
}