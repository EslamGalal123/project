import 'package:flutter/material.dart';
import 'package:projectdia/view/Login/items/loginpageitems.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          ImageInLogin(
            widthImage: 250,
            height: 230,
          ),
          Text_in_login(
            textInLogin: 'Login to your account',
          ),
          TextFieldContainer(
            text: 'Email',
            icon: Icons.email_outlined,
          ),
          TextFieldContainer(
            text: 'password',
            icon: Icons.key,
          ),
          CheckBox(),
          ButtonContainerr(
            text: 'Sign in',
          ),
        const  Forget_Button(),
          Dividerr(content:  'or continue with',width: 99,),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Iconslogin(
                image: 'assets/login/Facebook.png',
              ),
              Iconslogin(
                image: 'assets/login/Group.png',
              ),
              Iconslogin(
                image: 'assets/login/Apple.png',
              ),
            ],
          ),
          Textbutton(account: 'Don’t have an account?',option: 'sign up',),
        ]));
  }
}

