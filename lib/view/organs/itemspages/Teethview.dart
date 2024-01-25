import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/itemspages/itemspages.dart';
import 'package:projectdia/view/organs/teeth.dart';

class TeethView extends StatelessWidget {
  const TeethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemsPages(imageorgans: 'assets/organs/teeth.png', OnPressed: (){  Navigator.push(context,MaterialPageRoute(builder:(context)=>const Teeth(),));} ),
    );
  }
}

