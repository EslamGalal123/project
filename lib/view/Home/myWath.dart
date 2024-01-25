import 'package:flutter/material.dart';

class MyWatchScreen extends StatefulWidget {
  const MyWatchScreen({super.key});
  @override
  _MyWatchScreenState createState() => _MyWatchScreenState();
}

class _MyWatchScreenState extends State<MyWatchScreen> {
  bool type1Checked = false;
  bool type2Checked = false;
  String readingValue = '33/99';
  String classificationValue = 'High'; 
  TextEditingController fbsController = TextEditingController();
  TextEditingController rpsController = TextEditingController();
  TextEditingController hba1cController = TextEditingController();
  TextEditingController hcvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Watch'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings button press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          
          children: [
            Text(
              'My Watch',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Blood-Sugar Level',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text('Type 1'),
                Checkbox(
                  value: type1Checked,
                  onChanged: (bool? value) {
                    setState(() {
                      type1Checked = value!;
                      if (type1Checked)
                        type2Checked = false; 
                    });
                  },
                ),
                Text('Type 2'),
                Checkbox(
                  value: type2Checked,
                  onChanged: (bool? value) {
                    setState(() {
                      type2Checked = value!;
                      if (type2Checked)
                        type1Checked = false; 
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text('Reading My Watch'),
                SizedBox(width: 8.0),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(readingValue),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text('Classification Sugar'),
                SizedBox(width: 8.0),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(classificationValue),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Text(
              'Medical Test',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: fbsController,
                    decoration: InputDecoration(labelText: 'FBS'),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    controller: rpsController,
                    decoration: InputDecoration(labelText: 'RPS'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: hba1cController,
                    decoration: InputDecoration(labelText: 'HbA1C'),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    controller: hcvController,
                    decoration: InputDecoration(labelText: 'HCV'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text(''),
                SizedBox(width: 8.0),
                Image.asset(
                  'assets/my watch/watch.jpg',
                  width: 360,
                  height: 270,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}