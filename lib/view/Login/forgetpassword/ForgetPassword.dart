import 'package:flutter/material.dart';
import 'package:projectdia/view/Login/forgetpassword/VerificationPage.dart';

class MyForgetPasswordPage extends StatelessWidget {
   const MyForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Forget Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
            SizedBox(height: 10),
            Text(
              'Select which contact details should we use to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Image.asset(
                  'assets/New Password/new.png',
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 4),
                Image.asset(
                  'assets/New Password/sms.jpg',
                  height: 300,
                  width: 300,
                ),
              ],
            ),
          GestureDetector(
      onTap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const MyVerificationPage(),));
      },
        
      
      child: Container(
        
        alignment: Alignment.center,
        margin:const EdgeInsets.all(10),
         width: 350,
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color:const Color(0xFF246BFE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
          ),
          child:  Text(
                'Continue',
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
      ),
    ),
          ],
        ),
      ),
    );
  }
}
