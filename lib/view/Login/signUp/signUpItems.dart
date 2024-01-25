import 'package:flutter/material.dart';
import 'package:projectdia/view/Doctor/DoctorPage.dart';
import 'package:projectdia/view/Information/informationPage1.dart';
import 'package:projectdia/view/Login/loginpage.dart';
import 'package:projectdia/view/Patient%20Follower/PatientFollower.dart';

// ignore: must_be_immutable
class ImageInSignUp extends StatelessWidget {
   const  ImageInSignUp({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
    
alignment: Alignment.center,
margin:const EdgeInsets.only(top: 30),

      child: Image.asset('assets/login/Rectangle 2.png',),
      
    );
  }
}

// ignore: must_be_immutable
class TextFieldCont extends StatelessWidget {

  
   TextFieldCont({super.key, 
    required this.text,required this.icon
  });
String text;
var icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 50,
     margin:const EdgeInsets.all(5),
     padding:const EdgeInsets.symmetric(horizontal: 20),

      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side:const BorderSide(width: 1, color: Color(0xFFAAAAAA)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      
      child:TextField(decoration: InputDecoration(
            icon: Icon(icon),
            hintText: text,
            hintStyle:const TextStyle(color: Color(0xFFAAAAAA),
            fontSize: 20,
            
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            ),
            border: InputBorder.none
          ),),

    );
  }
}
// ignore: must_be_immutable
class Text_Field extends StatelessWidget {

  
   Text_Field({super.key, 
    required this.text,
  });
String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 50,
     margin:const EdgeInsets.all(5),
     padding:const EdgeInsets.symmetric(horizontal: 20),

      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side:const BorderSide(width: 1, color: Color(0xFFAAAAAA)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      
      child:TextField(decoration: InputDecoration(
            
            hintText: text,
            
            hintStyle:const TextStyle(color: Color(0xFFAAAAAA),
            fontSize: 20,
            
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            ),
            border: InputBorder.none
          ),),

    );
  }
}

class RadioInSignUp extends StatefulWidget {
  const RadioInSignUp({super.key});

  @override
  State<RadioInSignUp> createState() => _RadioInSignUpState();
}

class _RadioInSignUpState extends State<RadioInSignUp> {
   String? optionToSiginUp;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(value: 'Patient', groupValue: optionToSiginUp, onChanged:(val){
          setState(() {
            optionToSiginUp = val;
          });
        }),
      const  Text('Patient',
    style: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    
    ),),
     Radio(value: 'Patient follower', groupValue: optionToSiginUp, onChanged:(val){
          setState(() {
            optionToSiginUp = val;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const PatientFollower(),));
          });
        }),
       const Text('Patient follower',
    style: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    
    ),),
     Radio(value: 'Doctor', groupValue: optionToSiginUp, onChanged:(val){
          setState(() {
            optionToSiginUp = val;
            Navigator.push(context,MaterialPageRoute(builder:(context)=>const DoctorPage(),));
          });
        }),
       const Text('Doctor',
    style: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    
    ),)
      ],
    );
  }
}
// ignore: must_be_immutable
class ButtonCont extends StatelessWidget {
 ButtonCont({super.key, 
    required this.text
  });
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const RegisterInfoScreen() ));
      },
      
      child: Container(
        
        alignment: Alignment.center,
        margin:const EdgeInsets.all(10),
         width: 350,
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color:const Color(0xFF246BFE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
          ),
          child:  Text(
                text,
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
      ),
    );
  }
}
// ignore: must_be_immutable
class TextFieldcontainer extends StatelessWidget {

  
   TextFieldcontainer({super.key, 
    required this.text,required this.icon
  });
String text;
var icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 50,
     margin:const EdgeInsets.all(5),
     padding:const EdgeInsets.symmetric(horizontal: 20),

      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side:const BorderSide(width: 1, color: Color(0xFFAAAAAA)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      
      child:TextField(decoration: InputDecoration(
            icon: Icon(icon),
            hintText: text,
            hintStyle:const TextStyle(color: Color(0xFFAAAAAA),
            fontSize: 20,
            
            
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            ),
            border: InputBorder.none
          ),),

    );
  }
}
// ignore: must_be_immutable
class TexTbutton extends StatelessWidget {
     TexTbutton({super.key, 
    required this.account,
    required this.option
  });

  String account;
  String option;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
       Text(
          account,
          style:const TextStyle(
            color: Color(0xFF9E9D9D),
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
        ),
        TextButton(
            onPressed: ()  {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const login()));
            },
            child: Text(
              option,
              style: const TextStyle(
                color: Color(0xFF246BFE),
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ))
      ],
    );
  }
}
