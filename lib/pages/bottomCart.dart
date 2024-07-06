import 'package:first_flutter_project_demo/pages/cartScreen.dart';
import 'package:flutter/material.dart';

class BottomCart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/png_food/salad.png', fit: BoxFit.fill,)
                  ),
                ),
                Text('1 ITEM', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),),
                Icon(Icons.arrow_drop_up, color: Colors.green.shade800,),
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen(),
                    )
                );
              },
              child: Container(
                width: 200,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade700,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Next', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                    Icon(Icons.arrow_right, color: Colors.white,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}