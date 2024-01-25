import 'package:flutter/material.dart';
import 'package:projectdia/view/Login/loginoptions.dart';

import 'package:projectdia/view/OnBoarding/content_model.dart';

class OnBoardingPage1 extends StatefulWidget {
  const OnBoardingPage1({super.key});

  @override
  State<OnBoardingPage1> createState() => _OnBoardingPage1State();
}

class _OnBoardingPage1State extends State<OnBoardingPage1> {
  int currentindex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffa1c4fd), Color(0xffc2e9fb)],
        ),
      ),
      child: Column(children: [
        Expanded(
          child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentindex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin:const EdgeInsets.only(top: 30),
                          child: Image.asset(
                            contents[i].image!,
                            height: 300,
                          ),
                        ),
                      ),
                     const SizedBox(height: 20),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin:const EdgeInsets.only(top: 20),
                          child: Text(contents[i].title!,
                              style:const TextStyle(
                                color: Color(0xFF246BFE),
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                
                              )),
                        ),
                      ),
                     
                      Expanded(
                        flex: 1,
                        child: Text(
                          contents[i].discription!,
                          textAlign: TextAlign.center,
                          style:const TextStyle(
                            color: Color(0xFF010000),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                           
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              contents.length, (index) => buildDot(index, context)),
        ),
        Container(
          
          width: double.infinity,
          margin:const EdgeInsets.all(60),
          child: ElevatedButton(
              child: Text(
                currentindex == contents.length - 1 ? "Get Started" : 'Next',
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                if (currentindex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>const loginOption(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration:const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF246BFE)),
              )),
        ),
      ]),
    ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentindex == index ? 30 : 10,
      margin:const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:const Color(0xFF246BFE),
      ),
    );
  }
}
