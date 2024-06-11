import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
    bool changeButton=false;
    String name ="";
    final _formKey=GlobalKey<FormState>();


    moveToHome(BuildContext context) async {
   
      if(_formKey.currentState!.validate()){
   
      setState(() {
                      changeButton=true;
                    });
                
                    await Future.delayed(const Duration(seconds: 1)); 
                    // ignore: use_build_context_synchronously
                   await Navigator.pushNamed(context, MyRoutes.homeRoute);
                   setState(() {
                      changeButton=false;
                    });
    }
    }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
              children: [
                Image.asset("assets/images/Hey.png",
                fit: BoxFit.cover,
            
                ),
          
               
                
                 Text("Welcome $name",
                
                style: const TextStyle(
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

          
                  validator: (value){
                    if(value!.isEmpty){
                    return "User Name can't be Null";
                    }
                    return null;
                  },
          
                    onChanged: (value) {name=value;
          
                      setState(() {});
                    
                    },        
          
                  ),
                
          
                  TextFormField(
          
                    obscureText: true,
          
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enetr Password"
                    ),
                
                    validator: (value){

                    if(value!.isEmpty){
                    return "Password can't be Null";
                    }
                    else if(value!.length <4 ){
                      return "Choose a Stronger PassWord";
                    }
                         return null;

                  },

                  ),
                
               const SizedBox(
                  height: 20.0,
          
                ),
          
          
              Material(
          
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changeButton? 50 : 8),
          
                child: InkWell(
                
                  onTap: () => moveToHome(context), 
                
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 40,
                    width: changeButton?50 : 150,
                    alignment: Alignment.center,
                    // ignore: sort_child_properties_last
                    child: changeButton?const Icon(Icons.done, color:  Colors.white): const Text("Login",style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                       fontSize: 18
                      
                      ),
                      
                       ),
                  
                      //  decoration: BoxDecoration(
                
                      //     color: Colors.deepPurple,
                      //     // shape: changeButton
                      //     // ? BoxShape.circle
                      //     // :BoxShape.rectangle,
                
                      //     borderRadius: BorderRadius.circular(changeButton? 50 : 8)
                  
                      //  ),
                  
                  ),
                ),
              ),
          
          
          
              // ElevatedButton(
              //  // ignore: sort_child_properties_last
              //  child: const Text("Login"),
              //  style: TextButton.styleFrom(minimumSize: const Size(75, 50)),
              //  onPressed: (){
              //   Navigator.pushNamed(context, MyRoutes.homeRoute);
          
              //  },
               
              //  )
          
                  ],
                ),
              )
          
              ],
          
          ),
        ),
      )

    );
  }
}