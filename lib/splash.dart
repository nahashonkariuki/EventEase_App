import 'dart:async';

import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();

}

class _SplashState extends State<Splash>{
  @override
  void initState(){
    Timer(
      const Duration(seconds: 2),
        ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()))
    );
  }
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/eventease-high-resolution-color-logo.png'),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}