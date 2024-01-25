import 'package:flutter/material.dart';
import 'package:projectdia/view/Home/items/homeItems.dart';
import 'package:projectdia/view/WomanPage/WomanPage.dart';
import 'package:projectdia/view/organs/organs.dart';


class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body:Column(children: [
        Container(
          height: 100,
          margin: const EdgeInsets.only(top: 55),
          alignment: Alignment.centerLeft,
          
          child: Image.asset('assets/splash/Ellipse 2 .png',width: 100,height: 90,),),
          const Divider(height: 3,
            thickness: 1,
            indent: 10,
            endIndent: 10,
            color: Color(0xFFD1C4C4)),


            SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ListOfItems(name: 'Organs',onpressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Organs(),));},),
                 ListOfItems(name: 'womens\nsection',onpressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => WomanPage(),));},),
                  ListOfItems(name: 'health',onpressed: (){}),
                   ListOfItems(name: 'check\nsection',onpressed: (){}),
                    ListOfItems(name: 'test',onpressed: (){}),
                     ListOfItems(name: 'me',onpressed: (){}),
              ],
            ),),

            const Divider(height: 3,
            thickness: 1,
            indent: 10,
            endIndent: 10,
            color: Color(0xFFD1C4C4)),
            

            CardOfItems(title:  'Heart rate',imag: 'assets/home/Combo Chart.png',),
            CardOfItems(title:  'Blood Sugar',imag: 'assets/home/Glucometer.png',),
           CardOfItems(title:  'steps',imag: 'assets/home/Foot.png',),


      ]),
      
      
    );
  }
}