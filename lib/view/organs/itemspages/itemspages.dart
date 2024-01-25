import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsPages extends StatelessWidget {
  ItemsPages({super.key,required this.imageorgans, this.OnPressed});
  String imageorgans;
  VoidCallback? OnPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: GestureDetector(
        onTap: OnPressed,
        child: Column(
          
          children: [
            
            Image.asset(imageorgans,width: 300,),
        
            Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 14,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  
                      
                      child: Card(
                        margin: const EdgeInsets.all(20),
                        shadowColor: const Color.fromARGB(137, 63, 62, 62),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: ExpansionTile(
                          title: const Text(
                            'Diagnosis',
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),),
                          ),),
                    ),
                        
                          
                         Card(
                                               margin: const EdgeInsets.all(20),
                                               shadowColor: const Color.fromARGB(137, 63, 62, 62),
                                               color: Colors.white,
                                               shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                                               child: ExpansionTile(
                                                 title: const Text(
                            'Treatment',
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),),),
                                                 ),
                         
        
                      
                        
                           Card(
                                              margin: const EdgeInsets.all(20),
                                              shadowColor: const Color.fromARGB(137, 63, 62, 62),
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                                              child: ExpansionTile(
                          title: const Text(
                            'Treatment',
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),),),
                        
        
          ],
        ),
      ),
    );
  }
}