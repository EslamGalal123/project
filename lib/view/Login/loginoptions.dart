import 'package:flutter/material.dart';
import 'package:projectdia/view/Login/items/loginpageitems.dart';


class loginOption extends StatelessWidget {
  const loginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          ImageInLogin(widthImage: 250,height: 300,),
          Text_in_login(textInLogin: '''Let's join Us'''),
          Login_Options(imageOfOption: 'assets/login/Facebook.png',textOption: '    sign in with Facebook',),
          Login_Options(imageOfOption: 'assets/login/Group.png', textOption: '     Sign in with Google',),
          Login_Options(imageOfOption: 'assets/login/Apple.png', textOption: '    sign in with Apple'),
           Dividerr(content: 'or',width: 175,),
           buttonContainer(text: 'sign in with Email',),
           Textbutton(account: 'Don’t have an account?', option: 'sign up')
        ],
      ), 
      
    );
  }
}