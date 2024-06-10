import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){

runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp( 
     //  home:  HomePage1(),
       theme: ThemeData(

        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily
       ),
      
   // initialRoute: "/home",
    routes: {
      "/" : (context)=> const loginPage(),
      "/home": (context)=> HomePage1(),
      "/login": (context)=> const loginPage()
      //HomePage1()


    },

     );

  
  }
}