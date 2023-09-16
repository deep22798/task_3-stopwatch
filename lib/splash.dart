import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_3/home.dart';
class Splash extends StatefulWidget {
      Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Lottie.asset('assets/logo.json',width: double.infinity)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Stop',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),

                        Text('watch',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    CircularProgressIndicator(backgroundColor: Colors.white,color: Colors.pink),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
