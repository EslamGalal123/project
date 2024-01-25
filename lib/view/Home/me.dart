import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String maritalStatus = 'Single';
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash/profil.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                'Profile',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              buildProfileField(
                label: 'Name',
                hint: 'Enter your name',
                prefixIcon: Icons.person,
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Weight:'),
                        buildProfileField(
                          label: '',
                          hint: 'Enter your weight',
                          prefixIcon: Icons.fitness_center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Height:'),
                        buildProfileField(
                          label: '',
                          hint: 'Enter your height',
                          prefixIcon: Icons.height,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Age:'),
                        buildProfileField(
                          label: '',
                          hint: 'Enter your age',
                          prefixIcon: Icons.cake,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Marital Status:'),
                        DropdownButton<String>(
                          value: maritalStatus,
                          onChanged: (String? newValue) {
                            setState(() {
                              maritalStatus = newValue!;
                            });
                          },
                          items: <String>[
                            'Single',
                            'Married',
                            'Divorced',
                            'Widowed'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text('Current Password:'),
              SizedBox(height: 8.0),
              buildProfileField(
                label: '',
                hint: 'Enter your current password',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showChangePasswordDialog(context);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(0, 50),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(width: 2, color: Colors.black),
                      ),
                    ),
                    child: Text(
                      'Save Profile',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showChangePasswordDialog(context);
                    },
                    child: Text('Change Password'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileField({
    required String label,
    required String hint,
    IconData? prefixIcon,
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                if (prefixIcon != null) Icon(prefixIcon),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      labelText: label,
                      hintText: hint,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Password'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildPasswordField(
                label: 'Current Password',
                controller: currentPasswordController,
              ),
              buildPasswordField(
                label: 'New Password',
                controller: newPasswordController,
              ),
              buildPasswordField(
                label: 'Confirm Password',
                controller: confirmPasswordController,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Handle change password logic
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Change Password'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  Widget buildPasswordField({
    required String label,
    required TextEditingController controller,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: true,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}