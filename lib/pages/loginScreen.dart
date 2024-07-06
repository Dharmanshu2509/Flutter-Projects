import 'package:first_flutter_project_demo/pages/introScreen.dart';
import 'package:first_flutter_project_demo/pages/registrationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login', style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),),
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
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IntroScreen(),
                      )
                  );
                }, child: Text('Login'),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistrationScreen()),
                    );
                  },
                  child: Text(
                    'Create an account. Click Here',
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