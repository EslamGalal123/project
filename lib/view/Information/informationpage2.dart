import 'package:flutter/material.dart';
import 'package:projectdia/view/Information/informationPage3.dart';

class SecondRegisterScreen extends StatelessWidget {
  const SecondRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const Text(
              'Register your information',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Do you use blood presure medications ?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2.3,
                    height: 50,
                    child: Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (v) {},
                        ),
                        const Text("Yes",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                            textAlign: TextAlign.left),
                      ],
                    )),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2.3,
                    height: 50,
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (v) {},
                        ),
                        const Text("No",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                            textAlign: TextAlign.left),
                      ],
                    )),
              ],
            ),
            const Text(
              'if yes , mention it?',
              style: TextStyle(
                color: Color(0xFF4285F4),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              maxLines: 4,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Do you take medication for atheroscleriosis or any heart\n disease ?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2.3,
                    height: 50,
                    child: Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (v) {},
                        ),
                        const Text("Yes",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                            textAlign: TextAlign.left),
                      ],
                    )),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2.3,
                    height: 50,
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (v) {},
                        ),
                        const Text("No",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                            textAlign: TextAlign.left),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'if yes , mention it?',
              style: TextStyle(
                color: Color(0xFF4285F4),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: 4,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const ThreeRegisterScreen(),
                    ));
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                width: 350,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: const Color(0xFF246BFE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
