import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';
import 'package:projectdia/view/organs/nervousSystem.dart';

class NervousSystemView extends StatelessWidget {
  const NervousSystemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemsPages(imageorgans: 'assets/organs/NervousSystem.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const NervousSystem(),));},),
    );
  }
}