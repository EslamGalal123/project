import 'package:flutter/material.dart';
import 'package:projectdia/view/organs/organsItems.dart';

class Organs extends StatelessWidget {
  const Organs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
      ),
      body:  Padding(
        padding:const EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
        const  Text(
            'Select the affected Organ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
         const SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),
              
              ),
              hintText: 'search',
              // suffixIcon: Icon(Icons.search)
              prefixIcon:const Icon(Icons.search_outlined)
            ),
          ),
         const SizedBox(height: 5,),
          Expanded(child: ListView(
            children:const [
              Radio_button()
            ],
          ),)
        ]),
      ),

    );
  }
}