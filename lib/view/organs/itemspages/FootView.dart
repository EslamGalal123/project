import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/foot.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';


class FootView extends StatelessWidget {
  const FootView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ItemsPages(imageorgans: 'assets/organs/foot.png',OnPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Foot(),));},) ,
    );
  }
}