import 'package:flutter/material.dart';
import 'package:projectdia/view/Mother/ChildPage.dart';
import 'package:projectdia/view/Mother/MotherPage.dart';

class Pregnancy extends StatelessWidget {
   const Pregnancy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Mother/Pregnancy.png',
              height: 450,
              width: 450,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MotherPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF246BFE),
              ).copyWith(
                minimumSize: MaterialStateProperty.all<Size>(Size(257, 71)),
                fixedSize: MaterialStateProperty.all<Size>(Size(257, 71)),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 24),
                ),
              ),
              child: Text('Mother'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChildPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF246BFE),
                minimumSize: Size(257, 71),
                fixedSize: Size(257, 71),
                textStyle: TextStyle(fontSize: 24, color: Colors.white),
              ),
              child: Text('Child'),
            ),
          ],
        ),
      ),
    );
  }
}