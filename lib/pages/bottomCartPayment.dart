import 'package:first_flutter_project_demo/pages/cartScreen.dart';
import 'package:flutter/material.dart';

class BottomCartPayment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CartScreen(),
                )
            );
          },
          child: Container(
            height: 40,
            width: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green.shade700,
            ),
            child: Center(
              child: const Text(
                'Choose Address at Next Step',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}