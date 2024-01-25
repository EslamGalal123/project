import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpecilizatioDoctor extends StatelessWidget {
   SpecilizatioDoctor({
    super.key,required this.text
  });
String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0,
          ),),
    );
  }
}

class TitleDoctor extends StatelessWidget {
  const TitleDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text(
         'Doctor information',
         style: TextStyle(
           color: Colors.black.withOpacity(0.6299999952316284),
           fontSize: 24,
           fontFamily: 'Poppins',
           fontWeight: FontWeight.w500,
           height: 0,
         ),
       ),
              );
  }
}
// ignore: must_be_immutable
class ListDoctorItems extends StatelessWidget {
  ListDoctorItems({super.key, required this.name,required this.onpressed,required this.imageDoctor});

 String imageDoctor;
  String name;
  
  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpressed,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        width: 143,
        height: 100,
        decoration: ShapeDecoration(
          color: Color.fromARGB(255, 251, 251, 251),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFAAAAAA)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Image.asset(imageDoctor),
            Text(
              name,
              style:const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inria Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DoctorTextField extends StatelessWidget {
   DoctorTextField({
    super.key,required this.icon,required this.hint
  });

  var icon;
  String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 65,
         margin:const EdgeInsets.all(5),
         padding:const EdgeInsets.symmetric(horizontal: 20),
    
          decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF246BFE)),
          borderRadius: BorderRadius.circular(18),
        ),
      
            
          ),
          
          child:TextField(decoration: InputDecoration(
    icon: Icon(icon),
    hintText: hint,
    hintStyle:const TextStyle(color: Color(0xFFAAAAAA),
    fontSize: 20,
    
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    ),
    border: InputBorder.none
              ),),);
  }
}

// ignore: must_be_immutable
class TimeWork extends StatelessWidget {
   TimeWork({
    super.key,required this.timework
  });
String timework;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      
       child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      Text(
         timework,
         style: TextStyle(
           color: Colors.black,
           fontSize: 20,
           fontFamily: 'Poppins',
           fontWeight: FontWeight.w500,
           height: 0,
         ),
       ),
       TextFormField(
        
         decoration: InputDecoration(
          hintText: '2:00',
           border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10)),
         ),
       )
     ],
                    ));
  }
}



