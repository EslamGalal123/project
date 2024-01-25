
import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/itemspages/CancerView.dart';
import 'package:projectdia/view/organs/itemspages/EyesView.dart';
import 'package:projectdia/view/organs/itemspages/FootView.dart';
import 'package:projectdia/view/organs/itemspages/HeadView.dart';
import 'package:projectdia/view/organs/itemspages/HeartView.dart';
import 'package:projectdia/view/organs/itemspages/KindeysView.dart';
import 'package:projectdia/view/organs/itemspages/NervousSystemView.dart';
import 'package:projectdia/view/organs/itemspages/Skinview.dart';
import 'package:projectdia/view/organs/itemspages/StomachView.dart';
import 'package:projectdia/view/organs/itemspages/Teethview.dart';
import 'package:projectdia/view/organs/itemspages/UrinaryTractView.dart';





class Radio_button extends StatefulWidget {
  const Radio_button({super.key});

  @override
  State<Radio_button> createState() => _Radio_buttonState();
}

class _Radio_buttonState extends State<Radio_button> {

 var organ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title:const Text('Teeth',),
          value: 1, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const TeethView(),));
          });

        }),

        RadioListTile(
            title:const Text('Skin'),
          value: 2, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const SkinView(),));
          });

        }),

        RadioListTile(
            title:const Text('Foot'),
          value: 3, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const FootView(),));
          });

        }),

        RadioListTile(
            title:const Text('Head'),
          value: 4, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const HeadView(),));
          });

        }),

        RadioListTile(
            title:const Text('Stomach'),
          value: 5, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const StomachView(),));
          });

        }),

        RadioListTile(
            title:const Text('Eyes'),
          value: 6, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const EyesView(),));
          });

        }),

        RadioListTile(
            title:const Text('Kindeys'),
          value: 7, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const KindeysView(),));
          });

        }),

        RadioListTile(
            title:const Text('Nervous System'),
          value: 8, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const NervousSystemView(),));
          });

        }),
        RadioListTile(
            title:const Text('Cancer'),
          value: 9, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const CancerView(),));
          });

        }),
        RadioListTile(
            title:const Text('Urinary Tract'),
          value: 10, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const UrinaryTractView(),));
          });

        }),
        RadioListTile(
            title:const Text('Heart'),
          value: 11, groupValue: organ, onChanged: (eslam){
          setState(() {
            organ=eslam;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const HeartView(),));
            
          });

        }),
        
      ],
    );
  }
}

// ignore: must_be_immutable
class title extends StatelessWidget {
     title({
    required this.name_of_page
  });


String name_of_page;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.only(top: 10),
      width: double.infinity,
      child: Text(
        name_of_page,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class condition extends StatelessWidget {
   condition({
     required this.description,
  });
String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 20, top: 7),
      child: Text(
        description,
        style:const TextStyle(
          color: Color(0xFFC1BABA),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      ),
    );
  }
}
