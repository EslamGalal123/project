import 'package:flutter/material.dart';
import 'package:projectdia/view/Mother/Pregnancy.dart';

class WomanPage extends StatelessWidget {
  const WomanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset('assets/Mother/women 1.png'),
          SizedBox(height: 10,),
          Row(
            children: [
              Image.asset('assets/Mother/Female Meeting.png'),
              Text(
    'Diabetes can Cause women to suffer\n From many diseases, including:',
    style: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'Istok Web',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  ),],      ),

  SectionWoman(image: 'assets/Mother/Pregnant (4).png',name: 'Pregnancy diabetes',ontap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Pregnancy(),));},),
  SectionWoman(name: 'menopuse', image: 'assets/Mother/Hormones.png',ontap: (){},),
  SectionWoman(name: 'polycystic orary syndrome', image: 'assets/Mother/Covid 19.png',ontap: (){},),
  SectionWoman(name:  'vaginal fungi', image: 'assets/Mother/Menstrual Cup.png',ontap: (){},)
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SectionWoman extends StatelessWidget {
   SectionWoman({
    super.key,required this.name, required this.image,required this.ontap
  });
String name;
String image;
VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
      margin: EdgeInsets.all(15),
      height: 71,
      decoration: ShapeDecoration(
        color: Color(0xFFF5F2F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
      children: [
        Image.asset(image),
         Text(
        name,
        style: TextStyle(
          color: Color(0xFF9E9D9D),
          fontSize: 20,
          fontFamily: 'Istok Web',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
      ],
      ),
      
      ),
    );
  }
}