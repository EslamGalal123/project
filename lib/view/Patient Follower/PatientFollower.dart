import 'package:flutter/material.dart';

class PatientFollower extends StatelessWidget {
  const PatientFollower({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),

      body: ListView(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Patient Follower',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6299999952316284),
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Patient National ID',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),),
          ),

    Container(
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
            icon: Icon(Icons.personal_injury),
            hintText: 'National ID',
            hintStyle:const TextStyle(color: Color(0xFFAAAAAA),
            fontSize: 20,
            
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            ),
            border: InputBorder.none
          ),),

    ),
    Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  
                    
                  ),
                  
                    
                    child: Card(
                      margin: const EdgeInsets.all(7),
                      shadowColor: const Color.fromARGB(137, 63, 62, 62),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: ExpansionTile(
                        title: const Text(
                          'Degree kinship',
                          style: TextStyle(
                            color: Color.fromARGB(255, 71, 70, 70),
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),),

                          children: [
                       
                        ListTile(
                          onTap: () {},
                          title: const Text('Father'),
                          
                        ),
                        ListTile(
                          onTap: () {},
                          title: const Text('Mother'),
                        ),
                        ListTile(
                          onTap: () {},
                          title: const Text('Brother'),
                        ),
                         ListTile(
                          onTap: () {},
                          title: const Text('Sister'),
                        ),
                         ListTile(
                          onTap: () {},
                          title: const Text('Wife'),
                        ),  
                         ListTile(
                          onTap: () {},
                          title: const Text('Husband'),
                        ),
                         ListTile(
                          onTap: () {},
                          title: const Text('Son'),
                        ),
                         ListTile(
                          onTap: () {},
                          title: const Text('Daughter'),
                        ),

                              
                          ]
                      ),
                        
                        ),
                  ),
                       
    
        ],
      ),
    );
  }
}