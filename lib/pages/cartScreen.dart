import 'package:first_flutter_project_demo/pages/bottomCartPayment.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CartScreen extends StatefulWidget {
  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {

  late int counts = 0;
  late List<int> counts2 = List<int>.filled(12, 0); // Initialize counts2 here
  bool isChecked = true; // Define and initialize the isChecked variable

  bool isTapped = false;
  int tipAmount = 0;

  void tapAmount(int amount){
    setState(() {
      if (isTapped && tipAmount == amount) {
        isTapped = false;
        tipAmount = 0;
      } else {
        isTapped = true;
        tipAmount = amount;
      }
    });
  }

  bool isCustomSelected = false;
  int customAmount = 0;

  void selectCustom() {
    setState(() {
      isCustomSelected = true;
      // Hide other tip options
      tipAmount = 0;
    });
  }

  void updateCustomAmount(String value) {
    setState(() {
      customAmount = int.tryParse(value) ?? 0;
    });
  }

  void clearCustomAmount() {
    setState(() {
      isCustomSelected = false;
      customAmount = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    // Initialize counts list with zeros for each grid tile
    counts; // Example length
    counts2; // Example length
  }

  void increment() {
    setState(() {
      counts++;
    });
  }

  void decrement() {
    setState(() {
      if (counts > 0) {
        counts--;
      }
    });
  }

  void increment2(int index) {
    setState(() {
      counts2[index]++;
    });
  }

  void decrement2(int index) {
    setState(() {
      if (counts2[index] > 0) {
        counts2[index]--;
      }
    });
  }

  var arrProductListImages = [
    Image.asset(
      'assets/images/banner.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/barcode.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/pizza.jpeg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/splash_image.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/splash_image_2.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/banner.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/barcode.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/pizza.jpeg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/radha_krishna.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/splash_image.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/splash_image_2.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/splash_image.jpg',
      fit: BoxFit.fill,
    ),
  ];
  var arrProductListName = [
    Text(
      'Catch Cumin Seeds',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Madhur Pure & Hygienic Sulphurless',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Pizza',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Chicken Biryani',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Chicken Hakka Noodles',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Chicken Lollipop',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Achari Paneer Tikka',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Cheese Sandwich',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Pizza',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Chicken Biryani',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Chicken Hakka Noodles',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
    Text(
      'Chicken Lollipop',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
    ),
  ];
  var arrProductWeigthName = [
    Text(
      '100g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '1kg',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '100g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '150g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '200g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '150g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '100g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '50g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '100g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '150g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '200g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    Text(
      '150g',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    ),
  ];
  var arrSimplePriceRate = [
    Text(
      '\u{20B9} 79',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 149',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 99',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 239',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 128',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 109',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 89',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 49',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 99',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 238',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 169',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
    Text(
      '\u{20B9} 159',
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    ),
  ];
  var arrStrikeThroughPriceRate = [
    Text(
      '\u{20B9} 90',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 169',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 100',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 299',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 163',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 136',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 119',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 89',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 90',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 279',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 189',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
    Text(
      '\u{20B9} 172',
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          color: Colors.black45,
          fontWeight: FontWeight.normal
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(1),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark
      )
    );

    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        //backgroundColor: Colors.red.shade100,
        body: SafeArea(
          child: Stack(
            children: [
              // Cart Body ---------------------------------------------------------------------------------------------------------
              Positioned(
                top: 60,
                //bottom: 60,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  // You can adjust the width according to your layout requirements
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 160),
                  child: ScrollConfiguration(
                    behavior: NoGlowScrollBehavior(),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Container 1
                          Container(
                            height: 145,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey.shade100,
                                        ),
                                        child: Icon(Icons.timer)),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Delivery in 8 minutes', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),),
                                          Text('Shipment of 1 item', style: TextStyle(color: Colors.black87, fontSize: 12),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(15),
                                              child: Container(
                                                color: Colors.grey.shade100,
                                                padding: EdgeInsets.all(0),
                                                width: 60,
                                                height: 60,
                                                margin: EdgeInsets.only(right: 10),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(0),
                                                  child: Image.asset('assets/images/png_food/salad.png', fit: BoxFit.fill,),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text('Salad ki Thali', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),),
                                              Text('38.5 g', style: TextStyle(color: Colors.black87, fontSize: 12),),
                                              Container(
                                                width: 45,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('\u{20B9} 30', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),),
                                                    Text('\u{20B9} 50', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough, fontSize: 12),),
                                                  ]
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: ProductButton(
                                              count: counts,
                                              increment: () =>
                                                  increment(),
                                              decrement: () =>
                                                  decrement(),
                                            ),
                                          ),
                                          // Container(
                                          //   child: Text('\u{20B9} 30', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),),
                                          // ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container 2 of Product List
                          Container(
                              height: 300,
                              padding: EdgeInsets.only(top:5, bottom: 5),
                              margin: EdgeInsets.only(top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  //List Heading
                                  Container(
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Before you checkout',
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // List Details
                                  Container(
                                    color: Colors.transparent,
                                    height: 250, // Set a fixed height
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      padding: EdgeInsets.only(top: 0, right: 5, left: 5),
                                      children: List.generate(12, (index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5),
                                          // Add padding horizontally
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              //Product Image
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(15),
                                                child: Container(
                                                  height: 110,
                                                  width: 110,
                                                  color: Colors.blue.shade50,
                                                  padding: EdgeInsets.all(8),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(5),
                                                    child: Container(
                                                        height: 0,
                                                        child: arrProductListImages[index]
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              //Product Details
                                              Container(
                                                width: 110,
                                                height: 45,
                                                margin: EdgeInsets.only(left: 3, top:5, bottom: 5),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                        margin: EdgeInsets.only(bottom: 5),
                                                        child: arrProductListName[index]
                                                    ),
                                                    Container(
                                                        child: arrProductWeigthName[index]
                                                    )
                                                  ],
                                                ),
                                              ),
                                              //Button
                                              Container(
                                                width: 110,
                                                padding: EdgeInsets.only(left: 2, right: 2),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Column(
                                                        children: [
                                                          arrSimplePriceRate[index],
                                                          arrStrikeThroughPriceRate[index],
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 60,
                                                      height: 40,

                                                      child: ProductButton2(
                                                        count2: counts2[index],
                                                        increment2: () =>
                                                            increment2(index),
                                                        decrement2: () =>
                                                            decrement2(index),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                ],
                              )
                          ),
                          // Container 3 of Coupany
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Container(
                                  height: 59,
                                  margin: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    //color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Container(
                                            height:40,
                                            width: 40,
                                            padding: EdgeInsets.all(5),
                                            //color: Colors.blue.shade200,
                                            color: Colors.white,
                                            child: Image.asset('assets/images/blue_motorbike.png')
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          width: MediaQuery.of(context).size.width / 1.33,
                                          //color: Colors.green.shade100,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Get FREE delivery', style: TextStyle(color: Colors.blue.shade800, fontSize: 12, fontWeight: FontWeight.bold)),
                                              Text('Add product worth \u{20B9} 79 more', style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold)),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 100,
                                                    height: 2,
                                                    color: Colors.blue.shade800,
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width / 2.05,
                                                    height: 2,
                                                    color: Colors.blue.shade100,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => CartScreen(),
                                        )
                                    );
                                  },
                                  child: Container(
                                    height: 39,
                                    width: double.infinity,
                                    //color: Colors.yellow.shade100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('See all Coupans'),
                                        Icon(Icons.arrow_right),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container 4 for Bill Details
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Bill Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),
                                          SizedBox(height: 8),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(Icons.article, size: 15,),
                                              SizedBox(width: 10),
                                              Text('Sub Total', style: TextStyle(fontSize: 13)),
                                              SizedBox(width: 5),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(context,
                                                      MaterialPageRoute(builder: (context) => CartScreen(),
                                                      )
                                                  );
                                                },
                                                child: Container(
                                                  /*color: Colors.grey.shade200,*/
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade200,
                                                    borderRadius: BorderRadius.circular(15)
                                                  ),
                                                  child: Icon(Icons.keyboard_arrow_down, size: 14,)
                                                )
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset("assets/images/black_motorbike.png", height: 15, width: 15,),
                                              SizedBox(width: 10),
                                              Text('Delivery Charge', style: TextStyle(fontSize: 13)),
                                              SizedBox(width: 5),
                                              Icon(Icons.info_outline, size: 14,)
                                            ],
                                          ),
                                          SizedBox(height: 8),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(Icons.shopping_bag, size:15,),
                                              SizedBox(width: 10),
                                              Text('Handling Charge', style: TextStyle(fontSize: 13)),
                                              SizedBox(width: 5),
                                              Icon(Icons.info_outline_rounded, size: 14,)
                                            ],
                                          ),
                                          SizedBox(height: 8),
                                          Text('Grand Total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('\u{20B9} 51', style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.black54)),
                                              Text('\u{20B9} 49', style: TextStyle(color: Colors.black)),
                                            ],
                                          ),
                                          SizedBox(height: 8),
                                          Text('\u{20B9} 25', style: TextStyle(color: Colors.black)),
                                          SizedBox(height: 8),
                                          Text('\u{20B9} 2', style: TextStyle(color: Colors.black)),
                                          SizedBox(height: 8),
                                          Text('\u{20B9} 76', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                                  child: CustomPaint(
                                    size: Size(MediaQuery.of(context).size.width, 35),
                                    painter: CurvePainter(),
                                    child: Container(
                                      height: 35,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 10, top: 15),
                                      child: Text('Shop for \u{20B9}74 more to get free delivery', style: TextStyle(fontSize: 11, color: Colors.indigo)),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                          // For Donation
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            padding: EdgeInsets.all(10),
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Image
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                        height:40,
                                        width: 40,
                                        padding: EdgeInsets.all(5),
                                        //color: Colors.blue.shade200,
                                        color: Colors.red.shade50,
                                        child: Image.asset('assets/images/blue_motorbike.png')
                                    ),
                                  ),
                                ),
                                // Details
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    width: 40,
                                    padding: EdgeInsets.only(left: 15, right: 10),
                                    //color: Colors.blue.shade50,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Feeding India Donation', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
                                        Text('Lorem Ipsum is simply dummy text of', overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(0xFF818181), fontSize: 12)),
                                        Row(
                                          children: [
                                            Text('the printing...', style: TextStyle(color: Color(0xFF818181), fontSize: 12)),
                                            InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return Dialog(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      ),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        padding: EdgeInsets.all(5),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Text(
                                                                "More Information",
                                                                style: TextStyle(fontWeight: FontWeight.bold),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Text("This is more detailed information about the donation."),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.of(context).pop();
                                                                },
                                                                child: Text("Close"),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Text('Read More', style: TextStyle(color: Color(0xFF187227), fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Amount
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 40,
                                    //color: Colors.green.shade50,
                                    padding: EdgeInsets.only(right: 5),
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text('\u{20B9}1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),)),
                                  ),
                                ),
                                // Radio Check Button
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 40,
                                    //color: Colors.deepPurple.shade50,
                                    child: Center(
                                      child: Checkbox(
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                        activeColor: Color(0xFF118C26), // Set the background color of the checkbox to green
                                        checkColor: Colors.white, // Set the color of the checkmark to white
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // For Tip to Delivery partner
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            padding: EdgeInsets.all(15),
                            //padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Tip your delivery partner', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                                          Text('Your kindness means a lot! 100% of your tip will go directly to \n your delivery partner.', style: TextStyle(color: Color(0xFF818181), fontWeight: FontWeight.normal, fontSize: 12),),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text('\u{20B9} $tipAmount', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                                          InkWell(
                                            onTap: (){
                                              isTapped = false;
                                              tapAmount(0);
                                            },
                                            child: Text(
                                              'Clear', style: TextStyle(color: Color(0xFF187227), fontWeight: FontWeight.bold, fontSize: 12),
                                            )
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        // 20rs. container
                                        InkWell(
                                          onTap: (){
                                            tapAmount(20);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: isTapped && tipAmount == 20 ? 1: 0.5, color: isTapped && tipAmount == 20 ? Colors.green.shade300 : Color(0xFFC9C9C9)),
                                              color: isTapped && tipAmount == 20 ? Colors.green.shade50 : Colors.white,
                                            ),
                                            //margin: EdgeInsets.only(top: 10, bottom: 5),
                                            height: 40,
                                            width: 70,
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('😄', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black),),
                                                  Text('  \u{20B9}20', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        // 30rs. container
                                        InkWell(
                                          onTap: (){
                                            tapAmount(30);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: isTapped && tipAmount == 30 ? 1: 0.5, color: isTapped && tipAmount == 30 ? Colors.green.shade300 : Color(0xFFC9C9C9)),
                                              color: isTapped && tipAmount == 30 ? Colors.green.shade50 : Colors.white,
                                            ),
                                            //margin: EdgeInsets.only(top: 10, bottom: 5),
                                            height: 40,
                                            width: 70,
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 10,
                                                  //padding: EdgeInsets.only(top: 1, left: 5),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF00B61A),
                                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                                                  ),
                                                  width: MediaQuery.of(context).size.width,
                                                  child: Center(child: Text('Most Tipped', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold))),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: isTapped && tipAmount == 30 ? Colors.green.shade100 : Colors.white,
                                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                                                  ),
                                                  width: MediaQuery.of(context).size.width,
                                                  height: 28,
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text('🤩', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black),),
                                                        Text('  \u{20B9}30', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // 50rs. container
                                        InkWell(
                                          onTap: (){
                                            tapAmount(50);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: isTapped && tipAmount == 50 ? 1: 0.5, color: isTapped && tipAmount == 50 ? Colors.green.shade300 : Color(0xFFC9C9C9)),
                                              color: isTapped && tipAmount == 50 ? Colors.green.shade50 : Colors.white,
                                            ),
                                            //margin: EdgeInsets.only(top: 10, bottom: 5),
                                            height: 40,
                                            width: 70,
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('😍', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black),),
                                                  Text('  \u{20B9}50', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Custom container
                                        InkWell(
                                          onTap: () {
                                            selectCustom();
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 0.5, color: isCustomSelected ? Colors.green.shade300 : Color(0xFFC9C9C9)),
                                              color: isCustomSelected ? Colors.green.shade50 : Colors.white,
                                            ),
                                            height: 40,
                                            width: 90,
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('👏', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black),),
                                                  Text('  Custom', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Conditionally show custom text field
                                        if (isCustomSelected)
                                          Container(
                                            // You can adjust the width according to your layout requirements
                                            width: MediaQuery.of(context).size.width,
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: TextField(
                                                    onChanged: (value) {
                                                      updateCustomAmount(value);
                                                    },
                                                    keyboardType: TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText: 'Enter amount',
                                                      border: OutlineInputBorder(),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.clear),
                                                  onPressed: () {
                                                    clearCustomAmount();
                                                  },
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.check),
                                                  onPressed: () {
                                                    // Perform any action needed on confirming the custom amount
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Cancellation Policy
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            padding: EdgeInsets.all(15),
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Cancellation Policy', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                                  Text('Orders cannot be cancelled once packed for delivery. In case of unexpected delays, a refund will be provided, if applicable.', style: TextStyle(color: Color(0xFF818181), fontWeight: FontWeight.normal, fontSize: 12),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //App Bar ------------------------------------------------------------------------------------------------------
              Positioned(
                top: 0,
                height: 60, // App bar height
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop(); // Navigate back
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 8,
                          child: Icon(Icons.arrow_back_outlined),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Checkout',
                              style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16,),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_cart_outlined, size: 15, color: Colors.green.shade700,),
                                  Text('Share', style: TextStyle(color: Colors.green.shade700, fontWeight: FontWeight.bold, fontSize: 15),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Bottom Button --------------------------------------------------------------------------------------------------
              BottomCartPayment(),
            ],
          ),
        ),
    );
  }
}

class NoGlowScrollBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }

  @override
  TargetPlatform getPlatform(BuildContext context) {
    return TargetPlatform.iOS;
  }
}


//1st Container Add Button
class ProductButton extends StatelessWidget {
  final int count;
  final Function() increment;
  final Function() decrement;

  const ProductButton({
    Key? key,
    required this.count,
    required this.increment,
    required this.decrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 30,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(5),
          color: Colors.green.shade700,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (count >= 0)
              GestureDetector(
                onTap: decrement,
                child: Icon(Icons.remove, size: 13, color: Colors.white),
              ),
            GestureDetector(
              onTap: () {
                if (count == 0) {
                  increment(); // Increment count to 1 if it's currently 0
                }
              },
              child: Text(
                count > 0 ? '$count' : '1',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            if (count >= 0)
              GestureDetector(
                onTap: increment,
                child: Icon(Icons.add, size: 12, color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}

//2nd Container Add Button
class ProductButton2 extends StatelessWidget {
  final int count2;
  final Function() increment2;
  final Function() decrement2;

  const ProductButton2({
    Key? key,
    required this.count2,
    required this.increment2,
    required this.decrement2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 40,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.green),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (count2 > 0)
              GestureDetector(
                onTap: decrement2,
                child: Icon(Icons.remove, size: 15),
              ),
            GestureDetector(
              onTap: () {
                if (count2 == 0) {
                  increment2(); // Increment count to 1 if it's currently 0
                }
              },
              child: Text(
                count2 > 0 ? '$count2' : 'ADD',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
            ),
            if (count2 > 0)
              GestureDetector(
                onTap: increment2,
                child: Icon(Icons.add, size: 15),
              ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue.shade50
    ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    double width = size.width / 30;
    double height = size.height;

    for (int i = 0; i < 30; i++) {
      double x = i * width;
      double y = (i.isEven) ? 0 : height/30;
      path.quadraticBezierTo(x + width / 2, y, x + width, (i.isEven) ? height/4 : 0);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

/*
Lorem Ipsum is simply dummy text of the printing and typesetting industry.
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
when an unknown printer took a galley of type and scrambled it to make a type specimen book.
It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
*/

/*Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Your other children widgets go here
                                CustomPaint(
                                  size: Size(MediaQuery.of(context).size.width, 35),
                                  painter: CurvePainter(),
                                ),
                              ],
                            ),
                          ),*/

