import 'package:flutter/material.dart';
import 'package:projectdia/view/OnBoarding/onBoardingPage1.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {

@override
  void initState(){
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnBoardingPage1()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/splash/3d6b91d4-0bab-40b2-8fd4-89f4a73fcb41.jpg'
          ),
          fit: BoxFit.cover,
        )),
        
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
          
          Center(
            child: Container(
              margin:const EdgeInsets.only(bottom: 30,right: 10),
            
              child:const Text(
                '  Enjoy Your Life With\n             DiaBest👋',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
         
          Center(
            child: Container(
              margin:const EdgeInsets.only(bottom: 80),
              child:const Text(
              'The best comfortable assistant of all time',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            ),
          )
        ]),)
    );
  }
}