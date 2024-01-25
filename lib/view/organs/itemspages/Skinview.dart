import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';
import 'package:projectdia/view/organs/skin.dart';

class SkinView extends StatelessWidget {
  const SkinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/skin.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Skin(),));},) ,
    );
  }
}