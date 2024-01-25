import 'package:flutter/material.dart';
import 'package:projectdia/view/Login/forgetpassword/ForgetPassword.dart';
import 'package:projectdia/view/Login/loginoptions.dart';
import 'package:projectdia/view/Login/loginpage.dart';
import 'package:projectdia/view/Login/signUp/signUp.dart';

// ignore: must_be_immutable
class ImageInLogin extends StatelessWidget {
   ImageInLogin({super.key, 
    required this.widthImage,required this.height
  });
double widthImage;
double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
alignment: Alignment.center,
margin:const EdgeInsets.only(top: 30),

      child: Image.asset('assets/splash/Ellipse 2 .png',width: widthImage,),
      
    );
  }
}

// ignore: must_be_immutable
class Text_in_login extends StatelessWidget {
   Text_in_login({super.key, 
    required this.textInLogin
  });
String textInLogin;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
margin:const EdgeInsets.only(bottom: 20),
      child: Text(textInLogin,
            style:const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
             
            ),
          ),
    );
  }
}

// ignore: must_be_immutable
class TextFieldContainer extends StatelessWidget {

  
   TextFieldContainer({super.key, 
    required this.text,required this.icon
  });
String text;
var icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 50,
     margin:const EdgeInsets.all(10),
     padding:const EdgeInsets.symmetric(horizontal: 20),

      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side:const BorderSide(width: 1, color: Color(0xFFAAAAAA)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      
      child:TextField(decoration: InputDecoration(
            icon: Icon(icon),
            hintText: text,
            hintStyle:const TextStyle(color: Color(0xFFAAAAAA),
            fontSize: 20,
            
            
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            ),
            border: InputBorder.none
          ),),

    );
  }
}

class CheckBox extends StatefulWidget {
const  CheckBox({
    super.key,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
    Container(
      padding:const EdgeInsets.only(left: 12),
      child: Checkbox(
          value: isChecked,
          onChanged: (newValue) {
            setState(() {
              isChecked = newValue;
            });
          }),
    ),
    const Text(
      'Remember me',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    ),
          ],
        );
  }
}

// ignore: must_be_immutable
class buttonContainer extends StatelessWidget {
 buttonContainer({super.key, 
    required this.text
  });
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const login() ));
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
          child:  Text(
                text,
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
      ),
    );
  }
}
// ignore: must_be_immutable
class ButtonContainerr extends StatelessWidget {
 ButtonContainerr({super.key, 
    required this.text
  });
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const loginOption() ));
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
          child:  Text(
                text,
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
      ),
    );
  }
}
class Forget_Button extends StatelessWidget {
  const Forget_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder:(context)=> MyForgetPasswordPage(),));
      },
      child:const Text(
        'Forget your password',
        style: TextStyle(
          color: Color(0xFF9E9D9D),
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}


// ignore: must_be_immutable
class Dividerr extends StatelessWidget {
   Dividerr({super.key, 
  required this.content,required this.width
  });
String content;
double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
        
        Container(
      width: width,
      decoration:const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFD2C8C8),
          ),
        ),
      )),
    
      Container(
        margin:const EdgeInsets.only(left:8,right: 8 ),
        child: Text(
        content,
        style:const TextStyle(
          color: Color(0xFFC1BABA),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      ),),
    
       Container(
      width: width,
      decoration:const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFC1BABA),
          ),
        ),)),
       ],
     );
  }
}

// ignore: must_be_immutable
class Iconslogin extends StatelessWidget {
   Iconslogin({super.key, 
    required this.image
  });
String image;
  @override
  Widget build(BuildContext context) {
    return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.all(5),
        width: 50,
        height: 50,
        clipBehavior: Clip.antiAlias,
       decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side:const BorderSide(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
        child:Image.asset(image)
        );
  }
}
// ignore: must_be_immutable
class Textbutton extends StatelessWidget {
     Textbutton({super.key, 
    required this.account,
    required this.option
  });

  String account;
  String option;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
       Text(
          account,
          style:const TextStyle(
            color: Color(0xFF9E9D9D),
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUp()));
            },
            child: Text(
              option,
              style: const TextStyle(
                color: Color(0xFF246BFE),
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ))
      ],
    );
  }
}

// ignore: must_be_immutable
class Login_Options extends StatelessWidget {
   Login_Options({super.key, required this.imageOfOption,required this.textOption});
String imageOfOption;
String textOption;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30,right: 30,bottom: 15),
  width: MediaQuery.of(context).size.width,
  height: 50,
  padding: const EdgeInsets.only(bottom: 4),
  decoration: ShapeDecoration(
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(80),
    ),
  ),
  child: Row(
    
    mainAxisAlignment: MainAxisAlignment.center,
    
    children: [
      Image.asset(imageOfOption),
      Text(
      textOption,
      style:const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
      ),
            )
    ],
  ),
);
  }
}
