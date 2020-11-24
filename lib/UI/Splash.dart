import 'package:flutter/material.dart';
import 'package:plan_my_health/UI/Login.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
       body: SafeArea(
       child: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Align(
           alignment: Alignment.center,
           child: GestureDetector(
             onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
             },
             child: Image.asset("assets/logo.png")),
         ),
       ),
       ),
    );
  }
}