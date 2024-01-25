import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectdia/view/organs/organsItems.dart';

class UrinaryTract extends StatefulWidget {
  const UrinaryTract({super.key});

  @override
  State<UrinaryTract> createState() => _TeethState();
}

class _TeethState extends State<UrinaryTract> {
  _TeethState();
  
  File? selectImage;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),

      body:  ListView(
          children: [
            title(name_of_page: 'UrinaryTract'),
            condition(description: ' condition of your urinarytract',),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    margin: const EdgeInsets.all(15),
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
                        ),
                      ),

                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 300,
                         
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                 pickImageFromCamera();
                                },
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  dashPattern: const [5, 8],
                                  radius: const Radius.circular(5),
                                  padding: const EdgeInsets.all(6),
                                  color: const Color.fromARGB(255, 152, 152, 152),
                                  child: Container(
                                      width: 330,
                                     height: 70,
                                      margin:
                                          const EdgeInsets.only(top: 20, bottom: 10),

                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.camera_alt,
                                            size: 30,
                                            color: Color(0xff0095FF),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(top: 15),
                                            child: const Text(
                                              'Drag your file here',
                                              style: TextStyle(
                                                color: Color(0xFF121212),
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0.09,
                                                letterSpacing: 0.30,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                child: const Text(
                                  'or',
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.10,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                 pickImageFromGallery();
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                                  width: 154,
                                  alignment: Alignment.center,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 52, vertical: 13),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF0095FF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: const Text(
                                    'Browser',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.10,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
                    margin: const EdgeInsets.all(15),
                    shadowColor: const Color.fromARGB(137, 63, 62, 62),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: ExpansionTile(
                      title: const Text(
                        'Prevention',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      children: [
                       
                        ListTile(
                          onTap: () {},
                          title: const Text('1'),
                          
                        ),
                        ListTile(
                          onTap: () {},
                          title: const Text('2'),
                        ),
                        ListTile(
                          onTap: () {},
                          title: const Text('3'),
                        ),
                         ListTile(
                          onTap: () {},
                          title: const Text('4'),
                        )        
                              
                        
                      ],
                    ),
                  ),
                ),
                Container(
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
                    margin: const EdgeInsets.all(15),
                    shadowColor: const Color.fromARGB(137, 63, 62, 62),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: ExpansionTile(
                      title: const Text(
                        'See a doctor as soon as possible if',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      children: [
                        ListTile(
                          onTap: () {},
                          title: const Text('1'),
                          
                        ),
                        ListTile(
                          onTap: () {},
                          title: const Text('2'),
                        ),
                        ListTile(
                          onTap: () {},
                          title: const Text('3'),
                        ),
                         ListTile(
                          onTap: () {},
                          title: const Text('4'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
      
  
  }

  // void pickFiless() async {
  Future pickImageFromGallery()async{
final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

if(returnedImage==null)return;


setState(() {
  selectImage =File(returnedImage.path);
});

  }

 Future pickImageFromCamera()async{
final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);

if(returnedImage==null)return;


 

setState((){

  selectImage =File(returnedImage.path);
});

}}
