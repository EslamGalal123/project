import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';
import 'package:projectdia/view/organs/kindeys.dart';

class KindeysView extends StatelessWidget {
  const KindeysView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/Kindeys.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Kindeys(),));},) ,
    );
  }
}