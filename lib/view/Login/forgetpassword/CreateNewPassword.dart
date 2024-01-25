import 'package:flutter/material.dart';
class CreateNewPassword extends StatelessWidget {
 

  CreateNewPassword({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            Text(
              'Create New Password',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Create your new password'),
            SizedBox(height: 16.0),
            ClipOval(
              child: SizedBox(
                width: 200.0,
                height: 200.0,
                child: Image.asset(
                  'assets/New Password/Newpassword.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter new password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm new password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    // Handle checkbox state
                  },
                ),
                Text('Remember me'),
              ],
            ),
            SizedBox(height: 16.0),
           GestureDetector(
      onTap: (){
       _showDialog(context);
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

  // Function to show a dialog
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(''),
          content: Image.asset(
            'assets/New Password/congrats.png',
            fit: BoxFit.cover,
          ),
          actions: [
            ElevatedButton(
              
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(primary: Color(0xFF246BFE)),
            ),
          ],
        );
      },
    );
  }}