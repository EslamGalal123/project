import 'package:flutter/material.dart';
import 'package:projectdia/view/Login/items/loginpageitems.dart';
import 'package:projectdia/view/Login/signUp/signUpItems.dart';

class SignUp extends StatelessWidget {
    const SignUp({super.key}

  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
         const ImageInSignUp(),
          Text_Field(text:  'Full name'),
          Text_Field(text:  'National ID'),
          TextFieldContainer(
            text: 'Email',
            icon: Icons.email_outlined,
          ),
          TextFieldcontainer(
            text: 'password',
            icon: Icons.key,
          ),
          TextFieldcontainer(
            text: 'password',
            icon: Icons.key,
          ),
        const  RadioInSignUp(),
          ButtonCont(text:  'Sign UP'),
          TexTbutton(account: 'Already have an account?', option: 'login')
          


        ],
      ),
    );
  }
}

