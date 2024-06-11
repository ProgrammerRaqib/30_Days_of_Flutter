import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/cupertino/icons.dart';
//import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final image1Url="https://i.tribune.com.pk/media/images/Peaky-blinders1717582879-0/Peaky-blinders1717582879-0.jpg";
    return  Drawer(


      
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
        children:  [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              
              margin: EdgeInsets.zero,
              accountName: const Text('Raqib'),
            accountEmail: const Text("raqib@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(image1Url),
            ),
            
            ),
        
          
          ),
       
       const ListTile(
        leading: Icon(CupertinoIcons.home,
        color: Colors.white,),
        title: Text("Home",
        style: TextStyle(  color: Colors.white),
        // ignore: deprecated_member_use
        textScaleFactor: 1.2,
        
        
        ),
       ),

       const ListTile(
        leading: Icon(CupertinoIcons.profile_circled,
        color: Colors.white,),
        title: Text("Profile",
        // ignore: deprecated_member_use
        textScaleFactor: 1.2,
        style: TextStyle(  
          color: Colors.white ),
        
        
        
        ),
       ),
       
      
      const ListTile(
        leading: Icon(CupertinoIcons.mail,
        color: Colors.white,),
        title: Text("Email",
        style: TextStyle(  color: Colors.white),
        // ignore: deprecated_member_use
        textScaleFactor: 1.2,
        
        
        ),
       ),
       
       
        ],
        
        ),
      )
    );
  }
}