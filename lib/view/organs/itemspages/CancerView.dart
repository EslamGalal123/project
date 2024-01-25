import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/cancer.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';

class CancerView extends StatelessWidget {
  const CancerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/Cancer.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Cancer(),));},) ,
    );
  }
}