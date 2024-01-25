import 'package:flutter/material.dart';
import 'package:projectdia/view/Home/items/homeItems.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 15,),
              Image.asset('assets/doctor/Doctor.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Doctors',
                  style: TextStyle(
                    color: Color(0xFFD6D1D1),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),

CardDoctor(namedoctor: 'Eslam Galal',specialty: 'assets/doctor/internist.png',specialtyName: 'internist',),  
CardDoctor(namedoctor: 'Eslam Galal',specialty: 'assets/doctor/internist.png',specialtyName: 'internist',),
CardDoctor(namedoctor: 'Eslam Galal',specialty: 'assets/doctor/internist.png',specialtyName: 'internist',),
CardDoctor(namedoctor: 'Eslam Galal',specialty: 'assets/doctor/internist.png',specialtyName: 'internist',),
CardDoctor(namedoctor: 'Eslam Galal',specialty: 'assets/doctor/internist.png',specialtyName: 'internist',),
CardDoctor(namedoctor: 'Eslam Galal',specialty: 'assets/doctor/internist.png',specialtyName: 'internist',),
CardDoctor(namedoctor: 'Eslam Galal',specialty: 'assets/doctor/internist.png',specialtyName: 'internist',),
CardDoctor(namedoctor: 'Eslam Galal',specialty: 'assets/doctor/internist.png',specialtyName: 'internist',),
       
        ],
      ),
    );
  }
}


