import 'package:flutter/material.dart';
import 'package:timecapsule/firstscreens/SignUp.dart';
import 'package:timecapsule/firstscreens/signin.dart';
import 'package:timecapsule/firstscreens/question.dart';
import 'package:timecapsule/models/home.dart';
import 'package:timecapsule/models/hover2.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  // bool ishover = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        "signin": (context) => signin(),
        "signup": (context) => SignupPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/capsule.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            // ignore: prefer_const_constructors
            width: double.infinity,
            height: double.infinity,

            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 160,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "signup");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff69482E),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xffDDCC8C),
                          fontSize: 28,
                        ),
                      ),
                      
                      )

                  ),
                  
                  
                  SizedBox(
                    height: 20,
                  ),
                     SizedBox(
                      width: 160,
                      height: 50,
                       child: ElevatedButton(
                         onPressed: () {
                           Navigator.pushNamed(context, "signin");
                         },
                         child: Text(
                           'Sign In',
                           style:
                               TextStyle(color: Color(0xffDDCC8C), fontSize: 28),
                         ),
                         style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0xff69482E),
            
            
           ),
                      ),
                      ),
                    
                  
              ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
