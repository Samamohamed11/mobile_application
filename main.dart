import 'package:flutter/material.dart';
import 'package:timecapsule/Profile/app_language.dart';
import 'package:timecapsule/Profile/user_profile.dart';
import 'package:timecapsule/firstscreens/flashScreen.dart';
import 'package:timecapsule/models/home.dart';

// import 'dart:html';
// void main(){
//   debugShowCheckedModeBanner: false;
//   runApp( home());
  
//   //museum()
// }
void main() {
  runApp( MyApp());
  debugShowCheckedModeBanner: false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TimeCapsule",
      
      home: flash(),
      routes: {
        user_profile.routeName: (context) => const user_profile(),
        
        app_language.routeName: (context) => const app_language(),
        home.routeName: (context) => const home(),
        // flash.routeName: (context) => const flash(),

      },
    );
  }
}