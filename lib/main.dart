import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
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
      
    initialRoute: "/home",
    routes: {
      "/" : (context)=> loginPage(),
      "/home": (context)=> HomePage1(),
      "/login": (context)=>const loginPage()
      //HomePage1()


    },

     );

  
  }
}