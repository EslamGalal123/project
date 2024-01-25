import 'package:flutter/material.dart';
import 'package:projectdia/view/Home/items/homeItems.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Today'),
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: ListView(
        children: [
          ListTileInHome(titlehome: 'Drink water', subtitlehome:'New', leadinghome: 'assets/home/Water (2).png', trailinghome:  '0/8\nglasses'),
          ListTileInHome(titlehome: 'eating', subtitlehome: 'New', leadinghome: 'assets/home/Meal.png', trailinghome: '0/3\nmeals'),
          ListTileInHome(titlehome: 'Sprts', subtitlehome: 'Sprts', leadinghome: 'assets/home/Sports.png', trailinghome: ''),
          ListTileInHome(titlehome: 'Medicins', subtitlehome: 'New', leadinghome: 'assets/home/Pill.png', trailinghome: ''),
          ListTileInHome(titlehome: 'Sleep', subtitlehome: 'New', leadinghome: 'assets/home/Sleep.png', trailinghome: '0/8\nHours')
        ],
      ),
    );
  }
}

