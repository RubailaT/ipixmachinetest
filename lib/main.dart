
import 'package:flutter/material.dart';
import 'package:ipixmachinetest/loginscreen.dart';
import 'package:ipixmachinetest/splashpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
//
// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: FlutterLogo(size: 200),
//       ),
//     );
//   }
// }