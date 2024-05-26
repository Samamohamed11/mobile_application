import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/models/map_page.dart';
import 'package:timecapsule/Reviews/reviews.dart';
import 'package:timecapsule/shelterm/shelter1.dart';
import 'package:timecapsule/shelterm/shelter2.dart';
import 'package:timecapsule/shelterm/shelter3.dart';

import 'package:timecapsule/shelterm/shelter4.dart';
import 'package:timecapsule/widget/colors.dart';
import 'package:favorite_button/favorite_button.dart';

class shelter2 extends StatefulWidget {
  @override
  State<shelter2> createState() => shelter2State();
}

class shelter2State extends State<shelter2> {
  Icon ic = Icon(CupertinoIcons.heart, size: 30);
  bool state = false;
  Icon ic2 = Icon(
    CupertinoIcons.heart_solid,
    size: 30,
    color: Color.fromARGB(255, 206, 38, 26),
  );
  Icon ic3 = Icon(CupertinoIcons.heart, size: 30);

  void fav() {
    setState(() {
      if (state == false) {
        ic = ic2;
        state = true;
      } else {
        ic = ic3;
        state = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "shelter3": (context) => shelter3(),
          "shelter4": (context) => shelter4(),
          "discr": (context) => shelter(),
        },
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Builder(builder: (context) {
            return SafeArea(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("image/backgroung2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ListView(
                      children: [
                        Builder(builder: (context) {
                          return Container(
                            width: 450,
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              image: DecorationImage(
                                image: AssetImage("image/1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 20.0,
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 15.0,
                        ),
                        //2nd row
                        Container(
                          width: 400,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xFFA39467),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    CupertinoIcons.doc_text,
                                    size: 40,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "the story of this piece",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFDDCC8C),
                                ),
                              ),
                              // SizedBox(
                              //   width: 160,
                              // ),
                              // GestureDetector(
                              //   onTap: () {
                              //     fav();
                              //   },
                              //   child: ic,
                              // ),
                            ],
                          ),
                        ),

                        //3rd raw
                        SizedBox(
                          height: 10,
                        ),

                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "Pompe, the female personification of a procession, between Eros and Dionysos; names inscribed Pompe whose mantle only accentuates her nudity, holds a wreath and looks toward Dionysos, seated and wearing a diadem. The winged Eros adjusts his sandals as though preparing to depart. The gilt openwork basket on the ground is the type used in religious processions to carry sacrificial implements to the place of sacrifice. This procession must be part of an Athenian festival in honor of Dionysos, probably the Anthesteria, which culminated in the sacred marriage of the god to the wife of the archon basileus, a high official representing the ancient Athenian kings. This is one of the most refined vase-paintings in the entire collection. The graceful figure of Pompe reflects full-scale statues of Aphrodite in the nude that were being carved in the wake of the first nude statue of the goddess created by Praxiteles in the mid-fourth century B.C.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFDDCC8C),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 450,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              // Container(
                              //   height: 48,
                              //   width: 48,
                              //   decoration: BoxDecoration(
                              //     color: Color(0xFFA39467),
                              //     shape: BoxShape.circle,
                              //   ),
                              //   child: Center(
                              //     child: Image(
                              //       image: AssetImage("image/sculpture.png"),
                              //       width: 40,
                              //       height: 40,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Pictures",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFDDCC8C),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "shelter3");
                                },
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(100 / 2 - 100 / 10),
                                  child: Image.asset(
                                    "image/2.jpg",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "shelter4");
                                },
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(100 / 2 - 100 / 10),
                                  child: Image.asset(
                                    "image/3.jpg",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                              width: 80,
                              height: 100,
                              
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "discr");
                    
                                },
                                child: Positioned(
                                  left: 50,
                                  right: 0,
                                  top:20,

                                  child: Icon(CupertinoIcons.back,
                                      color: Colors.white, size: 30),
                                ),
                              )),
                ],
              ),
            );
          }),
        ));
  }
}
