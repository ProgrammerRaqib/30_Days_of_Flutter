import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  const loginPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
            fit: BoxFit.cover,
            ),

           
            
            const Text("Welcome",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold



              ),),


               const SizedBox(
              
              height: 50.0,
            
            ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [
                  TextFormField(
                decoration: const InputDecoration(
                  labelText: "User Name",
                  hintText: "Enter Your Name Here"
                ),
            
              ),
            

              TextFormField(

                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Enetr Password"
                ),
            
              ),
            
           const SizedBox(
              height: 20.0,

            ),

          ElevatedButton(
           child: Text("Login"),
           style: TextButton.styleFrom(),
           onPressed: (){
            print("Hello World");

           },
           
           )

              ],
            ),
          )

          ],

      )

    );
  }
}