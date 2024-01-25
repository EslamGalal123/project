import 'package:flutter/material.dart';
import 'package:projectdia/view/Home/bottomNavigation.dart';


class FourRegisterScreen extends StatelessWidget {
  const FourRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(children: [
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
                'Activity Level',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              for (var i = 0; i < activityLevel.length; i++)
                RadioListTile(
                  value: i == 0 ? 0 : false,
                  groupValue: i == 0 ? 0 : 2,
                  onChanged: (v) {},
                  title: Text(
                    activityLevel[i],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              Container(
                  margin:const EdgeInsets.only(right: 15),
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/Information/noto-v1_clapping-hands.png',
                    height: 100,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavigation(),
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
                    'Done',
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ])));
  }
}

List<String> activityLevel = [
  'Basal Metabolic Rate (BMR)',
  'Little or no exercise',
  'Esercise 1-3 times/week',
  'Esercise 4-5 times/week',
  'Daily exercise or intense exercise 3*4 times/week',
  'Intense exercise 6-7 times/week',
  'Very intense exercise daily, or physical job',
];
