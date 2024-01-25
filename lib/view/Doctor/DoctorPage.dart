import 'package:flutter/material.dart';
import 'package:projectdia/view/Doctor/DoctorpageItems.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        children: [
           TitleDoctor(),
          const SizedBox(height: 15,),
          SpecilizatioDoctor(text: 'Specialization',),
           SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'Internist', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'cardiologist', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'Oncologist', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'Obstetrician', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'bones doct.', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'Dentist', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name:'Dr. ENT' , onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name:'Oncologist' , onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'eyes doctor', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'Hepatologist', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'Neurologist', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'Dermatolo..', onpressed: (){}),
               ListDoctorItems(imageDoctor: 'assets/doctor/internist.png',name: 'Urologist', onpressed: (){}),
              ],
            ),),
          const  SizedBox(height: 10,),
                SpecilizatioDoctor(text: 'Clinic address',),

            DoctorTextField(icon: Icons.personal_injury,hint: 'city/street/block number',),
            DoctorTextField(icon: Icons.phone, hint: 'Phone Number'),
            SizedBox(height: 15,),
            Row(
              children: [
                Image.asset('assets/doctor/wi_time-5.png'),
                const Text(
                  'Time work',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20,),
                 TimeWork(timework: 'Start',),
                 SizedBox(width: 30,),
                 TimeWork(timework: 'End',),
                 SizedBox(width: 20,),
                
              ],
            ),
          const SizedBox(width: 20,),
           SpecilizatioDoctor(text: 'Location',),

          
        ],
      ),

    );
  }
}

