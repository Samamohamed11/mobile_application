// 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/firstscreens/SignUp.dart';
import 'package:timecapsule/firstscreens/new_password.dart';
import 'package:timecapsule/firstscreens/question.dart';
import 'package:timecapsule/models/home.dart';

void main() {
  runApp(signin());
}

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Question": (context) => const question(),
        "signup": (context) => const SignupPage(),
        "forgetpass": (context) => const new_password(),
      },
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          // backgroundColor: const Color.fromARGB(105, 77, 50, 1),
          body: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                // borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("image/backgroung2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Center(
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      height: MediaQuery.of(context).size.height - 20,
                      width: double.infinity,
                      child: Container(
                        child: Stack(
                          children: [
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40)),
                            const SizedBox(
                              height: 30,
                            ),
                            Positioned(
                              left: 0,
                              right: 10,
                              top: 85,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70),
                                  color: const Color(0xFFDDCC8C).withOpacity(0.4),
                                ),
                                width: 170,
                                height: 600,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 10,
                              top: 113,
                              child: Container(
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(40),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(70),
                                      bottomRight: Radius.circular(70),
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40)),
                  
                                  color: const Color(0xFF69482E).withOpacity(0.9),
                                ),
                                width: 560,
                                height: 600,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Column(
                                  children: <Widget>[
                                    SizedBox(height: 120.0),
                                    Text(
                                      "SIGN IN",
                                      style: TextStyle(
                                          fontSize: 30, color: Color(0xFFDDCC8C)),
                                    ),
                                    SizedBox(
                                      height: 00,
                                    ),
                                  ],
                                ),
                                const Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 310,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Email address ",
                                            hintStyle: TextStyle(
                                              color: Color(0xFFDDCC8C),
                                            ),
                                            prefixIcon: Icon(
                                              CupertinoIcons.mail,
                                              color: Color(0xFFDDCC8C),
                                            )),
                                        keyboardType: TextInputType.emailAddress,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    SizedBox(
                                      width: 310,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle:
                                              TextStyle(color: Color(0xFFDDCC8C)),
                                          prefixIcon: Icon(
                                            CupertinoIcons.lock,
                                            color: Color(0xFFDDCC8C),
                                          ),
                                          suffixIcon: Icon(CupertinoIcons.eye,
                                              color: Color(0xFFDDCC8C)),
                                        ),
                                        keyboardType: TextInputType.phone,
                                        obscureText: true,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                                Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "forgetpass");
                                    },
                                    child: Text(
                                      'Forgot your password ?',
                                      style: TextStyle(color: Color(0xFFDDCC8C)),
                                    ),
                                  ),
                                ),
                                Container(
                                    padding:
                                        const EdgeInsets.only(top: 3, left: 3),
                                    child: SizedBox(
                                      height: 60,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, "Question");
                                        },
                                        child: Text(
                                          "Sign in",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff69482E)),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: Size.fromWidth(150),
                                          shape: const StadiumBorder(),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          backgroundColor: const Color(0xFFDDCC8C).withOpacity(0.7),
                                        ),
                                      ),
                                    )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: const Text(
                                        "Sign In with social media",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFDDCC8C),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              100 / 2 - 100 / 10),
                                          child: Image.asset(
                                            "image/facebook.png",
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            100 / 2 - 100 / 10),
                                        child: Image.asset(
                                          "image/twitter.png",
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            100 / 2 - 100 / 10),
                                        child: Image.asset(
                                          "image/google-plus.png",
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            100 / 2 - 100 / 10),
                                        child: Image.asset(
                                          "image/linkedin.png",
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 55,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      "Don't have an account?",
                                      style: TextStyle(color: Color(0xFFDDCC8C)),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "signup");
                                      },
                                      child: const Text("Sign up",
                                          style: TextStyle(
                                              color: Color(0xFFDDCC8C),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
