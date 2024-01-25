import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/eyes.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';

class EyesView extends StatelessWidget {
  const EyesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/Eyes.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Eyes(),));},) ,
    );
  }
}