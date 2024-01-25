
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:projectdia/view/Home/doctor.dart';
import 'package:projectdia/view/Home/home.dart';
import 'package:projectdia/view/Home/me.dart';
import 'package:projectdia/view/Home/myWath.dart';
import 'package:projectdia/view/Home/reminder.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => HomepageState();
}

class HomepageState extends State<BottomNavigation> {
  int selectedIndex = 0;
  List widgetPages = [
    const Home(),
    const Reminder(),
    const Doctor(),
     MyWatchScreen(),
     ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(3),
        decoration: ShapeDecoration(
          color: const Color.fromARGB(255, 193, 192, 192),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Color(0xFFAAAAAA)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            backgroundColor:const Color.fromARGB(255, 56, 55, 55),
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            iconSize: 25,
            selectedFontSize: 15,
            unselectedFontSize: 10,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'Reminder',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.medical_services),
                label: 'Doctor',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.watch),
                label: 'Mywatch',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
      body: widgetPages[selectedIndex],
    );
  }
}
