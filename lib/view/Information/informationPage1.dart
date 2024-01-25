import 'package:flutter/material.dart';
import 'package:projectdia/view/Information/informationpage2.dart';

class RegisterInfoScreen extends StatefulWidget {
  const RegisterInfoScreen({super.key});

  @override
  State<RegisterInfoScreen> createState() => _RegisterInfoScreenState();
}

class _RegisterInfoScreenState extends State<RegisterInfoScreen> {
  String? gender;
  bool? option;

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
            Row(
              children: [
                Flexible(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Age',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                )),
                const SizedBox(
                  width: 25,
                ),
                Flexible(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'weight',
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  ],
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Height',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Gender",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio(
                    value: 'male',
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    }),
                Image.asset('assets/Information/openmoji_man.png'),
                const SizedBox(
                  width: 80,
                ),
                Radio(
                    value: 'female',
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    }),
                Image.asset('assets/Information/openmoji_woman.png')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Do you suffer from diabetic cama?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
                          onChanged: (val) {},
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
                          onChanged: (v) {
                            setState(() {});
                          },
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
              "Do you smoke?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2.3,
                    height: 50,
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (smoke) {
                            setState(() {});
                          },
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
                          value: true,
                          onChanged: (smok) {
                            setState(() {});
                          },
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
              "Does any one in your family have\n diabetes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
                          onChanged: (famil) {
                            setState(() {
                              option = famil;
                            });
                          },
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
                          onChanged: (family) {
                            setState(() {});
                          },
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
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const SecondRegisterScreen(),
                    ));
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                width: 350,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color:const Color(0xFF246BFE),
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
// Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SecondRegisterScreen(),
//                         ));