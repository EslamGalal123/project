import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/heart.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';

class HeartView extends StatelessWidget {
  const HeartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/Heart.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Heart(),));},) ,
    );
  }
}