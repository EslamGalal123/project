import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';
import 'package:projectdia/view/organs/urinaryTract.dart';

class UrinaryTractView extends StatelessWidget {
  const UrinaryTractView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/UrinaryTract.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const UrinaryTract(),));},) ,
    );
  }
}