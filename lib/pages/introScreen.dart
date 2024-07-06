import 'package:auto_size_text/auto_size_text.dart';
import 'package:first_flutter_project_demo/main.dart';
import 'package:first_flutter_project_demo/pages/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_project_demo/pages/homeScreen.dart';
import 'package:first_flutter_project_demo/pages/homeScreen2.dart';

import 'package:first_flutter_project_demo/pages/invoice.dart';

class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Intro", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Text('Welcome', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 0),
                color: Colors.blue.shade50,
                height: MediaQuery.of(context).size.height,
                child: GridView.count(crossAxisCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  padding: EdgeInsets.all(15),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyHomePage(),
                            )
                        );
                      }, child: AutoSizeText('Go to First Page'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.lightBlueAccent, // Set the text color
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Set padding
                          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Set text size
                          shape: RoundedRectangleBorder( // Set button shape
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginScreen(),
                            )
                        );
                      }, child: AutoSizeText('Login Screen'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.lightBlueAccent, // Set the text color
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Set padding
                          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Set text size
                          shape: RoundedRectangleBorder( // Set button shape
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomeScreen(),
                            )
                        );
                      },
                        child: Text('Home Screen'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.lightBlueAccent, // Set the text color
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Set padding
                          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Set text size
                          shape: RoundedRectangleBorder( // Set button shape
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => invoicePage(),
                            )
                        );
                      },
                        child: Text('Invoice Screen'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.lightBlueAccent, // Set the text color
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Set padding
                          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Set text size
                          shape: RoundedRectangleBorder( // Set button shape
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomeScreen2(),
                            )
                        );
                      },
                        child: Text('Home Screen 2'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.lightBlueAccent, // Set the text color
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Set padding
                          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Set text size
                          shape: RoundedRectangleBorder( // Set button shape
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

