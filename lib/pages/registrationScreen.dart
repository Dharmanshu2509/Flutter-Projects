import 'package:first_flutter_project_demo/pages/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Registration', style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.name,
                  // controller: mobileController, // Uncomment if you are using TextEditingController
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email Id',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  // controller: mobileController, // Uncomment if you are using TextEditingController
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  // controller: mobileController, // Uncomment if you are using TextEditingController
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  // controller: passwordController, // Uncomment if you are using TextEditingController
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  // controller: passwordController, // Uncomment if you are using TextEditingController
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen(),
                      )
                  );
                }, child: Text('Registration'),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Already have an account.',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 17,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}