import 'package:flutter/material.dart';

class ChildPage extends StatelessWidget {
   const ChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Mother/child.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.child_care,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Child',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Symptoms',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(fontSize: 24, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Enter your text here',
                    labelStyle:
                        TextStyle(fontSize: 24, color: Color(0xfff1efef)),
                  ),
                ),
                SizedBox(height: 20),
                _buildTextFieldWithTitle('Treatment', Colors.white),
                SizedBox(height: 20),
                _buildTextFieldWithTitle('Prevention', Colors.white),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // تنفيذ أي شيء تحتاجه عند الضغط على الزر Follow up with the doctor
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF246BFE),
                  ).copyWith(
                    minimumSize: MaterialStateProperty.all<Size>(Size(327, 71)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(327, 71)),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 20),
                    ),
                  ),
                  child: Text('Follow up with the doctor'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithTitle(String title, Color textColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
        ),
        SizedBox(height: 10),
        TextFormField(
          style: TextStyle(fontSize: 24, color: textColor),
          decoration: InputDecoration(
            labelText: 'Enter your text here',
            labelStyle: TextStyle(fontSize: 24, color: textColor),
          ),
        ),
        
      ],
    );
  }
}
