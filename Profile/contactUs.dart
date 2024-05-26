import 'package:flutter/material.dart';
import 'package:timecapsule/Profile/user_profile.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "profile":(context) => user_profile(),
      },
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Contact Us',
                style: TextStyle(color: Color(0xffEFDC96)),
              ),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/backgroung2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/backgroung2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Text before the Name field
                      Text(
                        'Please fill this fields:',
                        style: TextStyle(
                          color: Color(0xffEFDC96), // Set text color to brown
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 10), // Add some space
                      // TextFormField for Name
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Color(0xffEFDC96)),
                          // Set border color to brown
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffEFDC96)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // TextFormField for Email
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Color(0xffEFDC96)),
                          // Set border color to brown
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff6C4D32)),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20),
                      // TextFormField for Message
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Message',
                          labelStyle: TextStyle(color: Color(0xffEFDC96)),
                          // Set border color to brown
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffEFDC96)),
                          ),
                        ),
                        maxLines: 3,
                      ),
                      SizedBox(height: 20),
          
                      ElevatedButton(
                        onPressed: () {
                            Navigator.pushNamed(context, "profile");

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff6C4D32),
                        ),
                        child: Text('Submit',
                            style: TextStyle(color: Color(0xffEFDC96))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactUsPage(),
  ));
}
