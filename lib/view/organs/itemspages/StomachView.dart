import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';
import 'package:projectdia/view/organs/stomach.dart';

class StomachView extends StatelessWidget {
  const StomachView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/Stomach.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Stomach(),));},) ,
    );
  }
}