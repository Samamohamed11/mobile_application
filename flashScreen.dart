// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timecapsule/firstscreens/firstscreen.dart';
import 'package:timecapsule/models/home.dart';
import 'package:video_player/video_player.dart';

class flash extends StatefulWidget {
  const flash({super.key});

  @override
  State<flash> createState() => _flashState();
}

class _flashState extends State<flash> {
  late VideoPlayerController _controller;
  // late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("video/flashfast.mp4")
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
    
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,

      routes: {
        "first-screen": (context) => firstscreen(),
        
      },
      home: Builder(
        builder: (context) {
          Timer(Duration(seconds: 6), () {Navigator.pushNamed(context, "first-screen"); });
          return GestureDetector(
            
            onTap: () {},
              // Timer(Duration(seconds: 6), () {Navigator.pushNamed(context, "first-screen"); });            },
            child: Scaffold(
              body: Center(
                child: _controller.value.isInitialized
                    ? VideoPlayer(_controller)
                    : Container(),
              ),
              
            ),
          );
        }
      ),
    );
  }
}
