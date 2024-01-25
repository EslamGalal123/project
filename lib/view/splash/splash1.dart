import 'package:flutter/material.dart';
import 'package:projectdia/view/splash/splash2.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {

  void initState(){
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Splash2()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Column(
        
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

    Container(
      width: double.infinity,
        child: Container(
          
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
        
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xffa1c4fd), Color(0xffc2e9fb)],
          )),
          child: Center(
            
              child: Image.asset(

                'assets/splash/Ellipse 2 .png',
            
             
            ),
          ),
        ),
      ),
          
      ],
    ),);
  }
}