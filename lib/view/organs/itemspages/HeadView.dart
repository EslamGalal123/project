import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/head.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';

class HeadView extends StatelessWidget {
  const HeadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/Head.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Head(),));},) ,
    );
  }
}