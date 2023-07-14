 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ipixmachinetest/loginscreen.dart';

 class SplashScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/6,

                child:Image(image: AssetImage("images/online-shopping.png"),)
            ),
          ),
        ],
      ),
    );

  }
}
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//


