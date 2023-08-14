import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/globals.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 9), () {
      Navigator.pushReplacementNamed(context, 'login');
    });
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("..Jay Shree Ram..", style: TextStyle(
        color: Colors.orange,
        fontSize: 35,),

        ),

      ),
      //backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cvstack.ng/images/resume4.gif",
                  ),

                  fit: BoxFit.cover,
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
