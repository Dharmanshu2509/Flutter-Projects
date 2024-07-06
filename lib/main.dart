import 'package:first_flutter_project_demo/pages/introScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent.withOpacity(0),
      statusBarBrightness: Brightness.dark, // Set text color to black
      statusBarIconBrightness: Brightness.dark, // Set icon color to black
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
        dialogTheme: DialogTheme(
          backgroundColor: Colors.transparent, // Set background color to transparent
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Set border radius as needed
          ),
        ),
      ),

      home: IntroScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Container(
        color: Colors.white,
      )
    );
  }
}


