import 'package:flutter/material.dart';
import 'package:projectdia/view/Home/DoctorInfoScreen.dart';


// ignore: must_be_immutable
class ListOfItems extends StatelessWidget {
  ListOfItems({super.key, required this.name,required this.onpressed});

  String name;
  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpressed,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        width: 126,
        height: 87,
        decoration: ShapeDecoration(
          color: const Color(0xFFF9F5F5),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFAAAAAA)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          name,
          style:const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inria Sans',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CardOfItems extends StatelessWidget {
  CardOfItems({super.key, required this.title, required this.imag});

  String title;
  String imag;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15),
      width: 385,
      height: 91,
      decoration: ShapeDecoration(
        color: const Color(0xFFFAF6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: ListTile(
        
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontFamily: 'Inria Sans',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        trailing: Image.asset(imag),
      ),
    );
  }
}

// ignore: must_be_immutable
class ListTileInHome extends StatelessWidget {
  ListTileInHome({super.key, 
    required this.titlehome,required this.subtitlehome,required this.leadinghome,required this.trailinghome
  });
String titlehome,subtitlehome,leadinghome,trailinghome;
  @override
  Widget build(BuildContext context) {
    return Container(
       alignment: Alignment.center,
          margin: const EdgeInsets.all(15),
          width: 385,
          height: 91,
          decoration: ShapeDecoration(
            color: const Color(0xFFF9F5F5),
            shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
            ),
          ),
      child: ListTile(
        title: Text(titlehome, style: const TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontFamily: 'Lohit Devanagari',
      fontWeight: FontWeight.w400,
      height: 0,
    ),),
        subtitle: Text(subtitlehome,style: const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'Lohit Devanagari',
      fontWeight: FontWeight.w400,
      height: 0,
    ),),
        leading: Image.asset(leadinghome),
        trailing: Text(trailinghome,style: const TextStyle(
      color: Color(0xFF837676),
      fontSize: 20,
      fontFamily: 'Lobster',
      fontWeight: FontWeight.w400,
      height: 0,
    ),),
        
      ),
    );
  }
}

// ignore: must_be_immutable
class CardDoctor extends StatelessWidget {
   CardDoctor({
    super.key,required this.namedoctor,required this.specialty,required this.specialtyName
  });
String namedoctor;
String specialty;
String specialtyName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorInfoScreen(),));
      },
      child: Container(
        height: 110,
        margin: EdgeInsets.only(top: 10,right: 20,left: 20),
        padding: EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFAAAAAA)),
            borderRadius: BorderRadius.circular(20),)),
        child: Row(
          
          children: [
            Spacer(flex: 1,),
              
               Text(
            namedoctor,
            style: TextStyle(
              color: Color.fromARGB(255, 12, 11, 11),
              fontSize: 24,
              fontFamily: 'Lohit Devanagari',
              fontWeight: FontWeight.w400,
              
            ),
          ),
            
         
             
              Spacer(flex: 2,),
              Column(
                
                children: [
                  Image.asset(specialty,width: 60,height: 60,),
                  
                     Text(
                    specialtyName  ,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 18, 17, 17),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  
                
                ],
              ),
            
          ],
        ),
      ),
    );
  }
}