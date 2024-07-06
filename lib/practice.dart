/*
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State <HomeScreen> {

  String locationText = 'Loading...';

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  getCurrentLocation()async{
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied || permission == LocationPermission.deniedForever){
      print("Location Denied");
      LocationPermission ask = await Geolocator.requestPermission();
    }
    else {
      Position currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      List<Placemark> placemarks = await placemarkFromCoordinates(
          currentPosition.latitude, currentPosition.longitude);
      Placemark place = placemarks[0];
      String address = "${place.subThoroughfare}, ${place.thoroughfare}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}";
      setState(() {
        locationText = address;
      });
      print("Latitude=${currentPosition.latitude.toString()}");
      print("Longitude=${currentPosition.longitude.toString()}");
      print("Address= $address");
    }
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var arrColors = [
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.lightBlue,
      Colors.brown,
      Colors.deepOrange
    ];

    */
/*var arrImages = [
      Image.asset('assets/images/Achari_Paneer_Tikka.jpeg'),
      Image.asset('assets/images/Cheese_Sandwich.jpeg'),
      Image.asset('assets/images/pizza.jpeg'),
      Image.asset('assets/images/Chicken_Biryani.jpeg'),
      Image.asset('assets/images/Chicken_Hakka_Noodles.jpeg'),
      Image.asset('assets/images/Chicken_Lollipop.jpeg'),
    ];*//*


    var arrImages = [
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
      //Text('+6', style: TextStyle(fontWeight: FontWeight.bold, backgroundColor: ),),
      */
/*Image.asset(
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
      ),*//*

    ];
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
    var arrCatagoryImages = [
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
      )
    ];
    var arrCatagoryText = [
      Text(
        'Vagetables & Fruits',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Atta, Rice & Dal',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Oil, Ghee & Masala',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Dairy, Bread & Eggs',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Bakery & Biscuits',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Dry Fruits & Cereals',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken, Meat & Fish',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Kitchenware & Appliances',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      )
    ];
    var arrImagesName = [
      Text(
        'Achari Paneer Tikka',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Cheese Sandwich',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Pizza',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Biryani',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Hakka Noodles',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Lollipop',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Achari Paneer Tikka',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Cheese Sandwich',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Pizza',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Biryani',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Hakka Noodles',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Lollipop',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ];
    var arrProductListName = [
      Text(
        'Catch Cumin Seeds',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Madhur Pure & Hygienic Sulphurless',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Pizza',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Biryani',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Hakka Noodles',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Lollipop',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Achari Paneer Tikka',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Cheese Sandwich',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Pizza',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Biryani',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Hakka Noodles',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Lollipop',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
    var randomNumbers = ["+6", "+13", "+9", "+22", "+5"]; // Add more numbers
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
    ]; // as needed

    // Set the status bar color to match the Scaffold background color
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: SafeArea(
        child: Stack(
          children: [
            //App Bar
            Container(
              height: 170,
              width: double.infinity,
              color: Colors.yellow.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Time, Location & Profile
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Time & Location
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Delivery in',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                '8 minutes',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  */
/*Text(
                                    'Nehru Park 2, Dhenu Market, Indore Division',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),*//*

                                  Container(
                                    width: 250, // Set the maximum width for the text
                                    child: Text(
                                      locationText,
                                      maxLines: 2, // Limit the text to a single line
                                      overflow: TextOverflow.ellipsis, // Display ellipsis (...) when overflowed
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, right: 0),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                    */
/*child: Image.asset(
                                      'assets/images/barcode.jpg',
                                      height: 15,
                                    ),*//*

                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //Profile
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow[50],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
                            child: const Icon(
                              Icons.account_circle_outlined,
                              size: 45,
                              color: Colors.black,
                            )
                        ),
                        */
/*const Padding(
                          padding: EdgeInsets.only(
                              top: 40, left: 10, bottom: 20, right: 10),
                          child: Icon(
                            Icons.account_circle_outlined,
                            size: 45,
                            color: Colors.black,
                          ),
                          *//*

                        */
/*child: Image.asset(
                            'assets/images/barcode.jpg',
                            height: 15,
                          ),*//*
*/
/*
                        ),*//*

                      ],
                    ),
                  ),
                  //Search Bar
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, left: 8, bottom: 8, right: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Body
            Positioned(
              top: 170,
              child: Container(
                height: MediaQuery.of(context).size.height - 170, // Adjusted the height to fill the remaining screen space
                width: MediaQuery.of(context).size.width, // Adjusted the width to fill the entire screen width
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Column(
                        children: [
                          // One Row for Recent Item
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.only(top:10, left: 5, right: 5),
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bestsellers',
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                  Text(
                                    'See All',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Recent Item List View
                          Container(
                            color: Colors.white,
                            height: 210, // Set a fixed height
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(top: 0, right: 5, left: 5),
                              children: List.generate(12, (index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  // Add padding horizontally
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Container(
                                          height: 110,
                                          color: Colors.blue.shade50,
                                          padding: EdgeInsets.all(8),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 0,
                                              child: AspectRatio(
                                                  aspectRatio: 1 / 1,
                                                  child: GridView.builder(
                                                    padding: EdgeInsets.zero,
                                                    physics: const NeverScrollableScrollPhysics(),
                                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 2,
                                                      crossAxisSpacing: 5,
                                                      mainAxisSpacing: 5,
                                                    ),
                                                    itemCount: 4,
                                                    itemBuilder: (BuildContext context, int index) {
                                                      // For the first 3 tiles, display images
                                                      if (index < 3) {
                                                        return arrImages[index];
                                                      }
                                                      // For the fourth tile, display different numbers
                                                      else {
                                                        // Generate a random index within the range of the array length
                                                        int randomIndex = Random().nextInt(randomNumbers.length);
                                                        // Get the random number from the array
                                                        String randomNumber = randomNumbers[randomIndex];
                                                        return Container(
                                                          alignment: Alignment.center,
                                                          color: Colors.white54, // Adjust color as needed
                                                          child: Text(
                                                            randomNumber,
                                                            style: const TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        );
                                                      }

                                                    },
                                                  )
                                              ),
                                              */
/* child: arrImages[index]*//*

                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 110,
                                        height: 36,
                                        margin: EdgeInsets.only(left: 3, top: 5, bottom: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            arrImagesName[index],
                                            Text(
                                              '9 products',
                                              style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.normal
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: OutlinedButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStatePropertyAll(
                                                Colors.transparent,
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text('See All',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16
                                              ),
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                          // Banner
                          Container(
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 00, bottom: 00),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width, // Set a fixed width
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                      height: 200,
                                      autoPlay: true,
                                      autoPlayInterval: Duration(seconds: 0), // Adjust delay here
                                      enlargeCenterPage: true
                                  ), items: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(horizontal:0),
                                    child: Image.asset(
                                      'assets/images/banner.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                                ),
                              ),
                            ),
                          ),
                          //Category GridView
                          Container(
                            */
/*margin: EdgeInsets.only(bottom: 10, top: 0),*//*

                            //padding: EdgeInsets.all(0),
                            color: Colors.white,
                            width: double.infinity,
                            height: 350,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Grocery & Kitchen',
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 280,
                                  color: Colors.transparent,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: GridView.builder(
                                    padding: EdgeInsets.zero,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 1/1,
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 5,
                                      mainAxisExtent: 150,
                                    ),
                                    itemCount: arrCatagoryImages.length, // 2 rows * 4 columns = 8 cells
                                    itemBuilder: (BuildContext context, int index) {
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(15),
                                              child: Container(
                                                color: Colors.blue.shade50,
                                                padding: EdgeInsets.all(10),
                                                width: 90,
                                                height: 90,
                                                // decoration: BoxDecoration(
                                                //   borderRadius: BorderRadius.circular(10),
                                                //   //color: Colors.blue[50],
                                                // ),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(15),
                                                    child: arrCatagoryImages[index]),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                              width: 70,
                                              height: 50,
                                              //margin: EdgeInsets.all(10),
                                              child: arrCatagoryText[index]
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Category 2 GridView
                          Container(
                            */
/*margin: EdgeInsets.only(bottom: 10, top: 0),*//*

                            //padding: EdgeInsets.all(0),
                            color: Colors.white,
                            width: double.infinity,
                            height: 350,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Grocery & Kitchen',
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 280,
                                  color: Colors.transparent,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: GridView.builder(
                                    padding: EdgeInsets.zero,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 1/1,
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 5,
                                      mainAxisExtent: 150,
                                    ),
                                    itemCount: arrCatagoryImages.length, // 2 rows * 4 columns = 8 cells
                                    itemBuilder: (BuildContext context, int index) {
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(15),
                                              child: Container(
                                                color: Colors.blue.shade50,
                                                padding: EdgeInsets.all(10),
                                                width: 90,
                                                height: 90,
                                                // decoration: BoxDecoration(
                                                //   borderRadius: BorderRadius.circular(10),
                                                //   //color: Colors.blue[50],
                                                // ),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(15),
                                                    child: arrCatagoryImages[index]),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                              width: 70,
                                              height: 50,
                                              //margin: EdgeInsets.all(10),
                                              child: arrCatagoryText[index]
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Product List 1 SubCategory
                          Container(
                            height: 330,
                            //color: Colors.yellow.shade300,
                            color: Colors.white,
                            padding: EdgeInsets.only(top:5, bottom: 5),
                            child: Column(
                              children: [
                                //List Heading
                                Container(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hot Deals',
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                        ),
                                        Text(
                                          'See All',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // List Details
                                Container(
                                  color: Colors.transparent,
                                  height: 280, // Set a fixed height
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
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
                                                      */
/*child: AspectRatio(
                                              aspectRatio: 1 / 1,
                                              child: GridView.builder(
                                                padding: EdgeInsets.zero,
                                                physics: const NeverScrollableScrollPhysics(),
                                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  crossAxisSpacing: 5,
                                                  mainAxisSpacing: 5,
                                                ),
                                                itemCount: 4,
                                                itemBuilder: (BuildContext context, int index) {
                                                  // For the first 3 tiles, display images
                                                  if (index < 3) {
                                                    return arrImages[index];
                                                  }
                                                  // For the fourth tile, display different numbers
                                                  else {
                                                    // Generate a random index within the range of the array length
                                                    int randomIndex = Random().nextInt(randomNumbers.length);
                                                    // Get the random number from the array
                                                    String randomNumber = randomNumbers[randomIndex];
                                                    return Container(
                                                      alignment: Alignment.center,
                                                      color: Colors.white54, // Adjust color as needed
                                                      child: Text(
                                                        randomNumber,
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                },
                                              )
                                            ),*//*

                                                      child: arrProductListImages[index]
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // timer
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(15),
                                              child: Container(
                                                width: 80,
                                                color: Colors.red.shade50,
                                                child: const Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Icon(Icons.timelapse_rounded, size: 20,),
                                                      Text(
                                                        '20 MINS',
                                                        style: TextStyle(
                                                          color: Colors.brown,
                                                          fontWeight: FontWeight.w900,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
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
                                                    */
/*child: TextButton(onPressed: () {  },
                                                style: const ButtonStyle(
                                                  backgroundColor: MaterialStatePropertyAll(
                                                    Colors.transparent,
                                                  ),
                                                ),
                                                child: const Text('ADD',
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                  ),
                                                )
                                            ),*//*

                                                    child: OutlinedButton(
                                                        style: const ButtonStyle(
                                                          backgroundColor: MaterialStatePropertyAll(
                                                            Colors.transparent,
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: const Text('ADD',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.green,
                                                            fontSize: 16,
                                                          ),
                                                        )
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
                          //Product List 2 SubCategory
                          Container(
                            height: 330,
                            //color: Colors.yellow.shade300,
                            color: Colors.white,
                            padding: EdgeInsets.only(top:5, bottom: 5),
                            child: Column(
                              children: [
                                //List Heading
                                Container(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hot Deals',
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                        ),
                                        Text(
                                          'See All',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // List Details
                                Container(
                                  color: Colors.transparent,
                                  height: 280, // Set a fixed height
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
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
                                                      */
/*child: AspectRatio(
                                              aspectRatio: 1 / 1,
                                              child: GridView.builder(
                                                padding: EdgeInsets.zero,
                                                physics: const NeverScrollableScrollPhysics(),
                                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  crossAxisSpacing: 5,
                                                  mainAxisSpacing: 5,
                                                ),
                                                itemCount: 4,
                                                itemBuilder: (BuildContext context, int index) {
                                                  // For the first 3 tiles, display images
                                                  if (index < 3) {
                                                    return arrImages[index];
                                                  }
                                                  // For the fourth tile, display different numbers
                                                  else {
                                                    // Generate a random index within the range of the array length
                                                    int randomIndex = Random().nextInt(randomNumbers.length);
                                                    // Get the random number from the array
                                                    String randomNumber = randomNumbers[randomIndex];
                                                    return Container(
                                                      alignment: Alignment.center,
                                                      color: Colors.white54, // Adjust color as needed
                                                      child: Text(
                                                        randomNumber,
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                },
                                              )
                                            ),*//*

                                                      child: arrProductListImages[index]
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // timer
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(15),
                                              child: Container(
                                                width: 80,
                                                color: Colors.red.shade50,
                                                child: const Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Icon(Icons.timelapse_rounded, size: 20,),
                                                      Text(
                                                        '20 MINS',
                                                        style: TextStyle(
                                                          color: Colors.brown,
                                                          fontWeight: FontWeight.w900,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
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
                                                    */
/*child: TextButton(onPressed: () {  },
                                                style: const ButtonStyle(
                                                  backgroundColor: MaterialStatePropertyAll(
                                                    Colors.transparent,
                                                  ),
                                                ),
                                                child: const Text('ADD',
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                  ),
                                                )
                                            ),*//*

                                                    child: OutlinedButton(
                                                        style: const ButtonStyle(
                                                          backgroundColor: MaterialStatePropertyAll(
                                                            Colors.transparent,
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: const Text('ADD',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.green,
                                                            fontSize: 16,
                                                          ),
                                                        )
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

---------------------------------------------------------------

import 'package:first_flutter_project_demo/pages/BottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoryScreen extends StatefulWidget {
  @override
  CategoryScreenState createState() => CategoryScreenState();
}

class CategoryScreenState extends State<CategoryScreen> with SingleTickerProviderStateMixin {
  String _searchQuery = '';

  late List<int> counts;
  //int counts = 0;

  @override
  void initState() {
    super.initState();
    // Initialize counts list with zeros for each grid tile
    counts = List<int>.filled(12, 0); // Example length

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300), // Duration for the animation
    );
  }

  void increment(int index) {
    setState(() {
      counts[index]++;
    });
  }

  void decrement(int index) {
    setState(() {
      if (counts[index] > 0) {
        counts[index]--;
      }
    });
  }

  void showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text('Search'),
          content: TextField(
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Enter your search query...',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Perform search operation with _searchQuery
                // You can implement your search logic here
                // For example, you can filter your data based on _searchQuery
                // Once search is performed, you can update your UI accordingly
                Navigator.of(context).pop();
              },
              child: Text('Search'),
            ),
          ],
        );
      },
    );
  }

  int selectedIndex = 0; // Initially selected index

  void onSidebarItemTap(int index) {
    setState(() {
      selectedIndex = index; // Update selected index
    });
  }
  late AnimationController animationController;
  @override
  void dispose() {
    animationController.dispose(); // Dispose of the animation controller
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(1),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark));

    var arrImageText = [
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/png_food/burger.png',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Burger',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/Achari_Paneer_Tikka.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Achari Paneer Tikka',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(0),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/png_food/bowl_biryani_with_chicken_pieces.png',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Bowl Biryani With Chicken Pieces',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/Chicken_Biryani.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Chicken Biryani',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/Chicken_Hakka_Noodles.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Chicken Hakka Noodles',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/Chicken_Lollipop.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Chicken Lollipop',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/Chicken_Pakora.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Chicken Pakora',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/Keema_Pulao.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Keema Pulao',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/maggie.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Maggie',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  color: Colors.blue.shade50,
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    'assets/images/Noodles.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the image and the text
          Text(
            'Noodles',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    ];
    var arrItemImageText = [
      Container(
        width: 80,
        decoration: BoxDecoration(
          //border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 0.5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        height: 60,
        margin: EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
        padding: EdgeInsets.only(right: 5, left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 30, // Adjust the width as needed
              height: 30, // Adjust the height as needed
              child: Image.asset("assets/images/png_food/burger.png"),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                'Burger',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 80,
        decoration: BoxDecoration(
          //border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 0.5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        height: 60,
        margin: EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 30, // Adjust the width as needed
              height: 30, // Adjust the height as needed
              child: Image.asset("assets/images/png_food/salad.png"),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                'Salad',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 80,
        decoration: BoxDecoration(
          //border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 0.5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        height: 60,
        margin: EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 30, // Adjust the width as needed
              height: 30, // Adjust the height as needed
              child: Image.asset(
                  "assets/images/png_food/delicious_fried_chicken_with_french_fries_isolated.png"),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                'Delicious Fried Chicken With French Fries Isolated',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 80,
        decoration: BoxDecoration(
          //border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 0.5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        height: 60,
        margin: EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 30, // Adjust the width as needed
              height: 30, // Adjust the height as needed
              child: Image.asset("assets/images/png_food/samosa.png"),
            ),
            SizedBox(
              width: 5,
            ),
            const Expanded(
              child: Text(
                'Samosa',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 80,
        decoration: BoxDecoration(
          //border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 0.5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        height: 60,
        margin: EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 30, // Adjust the width as needed
              height: 30, // Adjust the height as needed
              child: Image.asset("assets/images/png_food/thali.png"),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                'Thali',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 80,
        decoration: BoxDecoration(
          //border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 0.5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        height: 60,
        margin: EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 30, // Adjust the width as needed
              height: 30, // Adjust the height as needed
              child: Image.asset("assets/images/png_food/veg_biryani.png"),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                'Veg Biryani',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    ];
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
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Madhur Pure & Hygienic Sulphurless',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Pizza',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Biryani',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Hakka Noodles',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Lollipop',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Achari Paneer Tikka',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Cheese Sandwich',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Pizza',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Biryani',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Hakka Noodles',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      Text(
        'Chicken Lollipop',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 149',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 99',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 239',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 128',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 109',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 89',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 49',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 99',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 238',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 169',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      Text(
        '\u{20B9} 159',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ];
    var arrStrikeThroughPriceRate = [
      Text(
        '\u{20B9} 90',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 169',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 100',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 299',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 163',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 136',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 119',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 89',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 90',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 279',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 189',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
      Text(
        '\u{20B9} 172',
        style: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
            color: Colors.black45,
            fontWeight: FontWeight.normal),
      ),
    ]; // as nee

    return Scaffold(
      body: SafeArea(
        child: Stack(
          //alignment: Alignment.center,
          children: [
            // Product Item in Grid View
            Positioned(
              top: 60,
              bottom: 0,
              left: MediaQuery.of(context).size.width / 3.2,
              width: MediaQuery.of(context).size.width * 2.7 / 4,
              child: Padding(
                padding:
                const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
                child: Column(
                  children: [
                    // Horizontal Tab
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        height: 60,
                        //color: Colors.transparent,
                        margin: EdgeInsets.only(
                            top: 5, right: 0, bottom: 5, left: 0),
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Sort By Container
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 0.5,
                                    offset: Offset(
                                        0, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: 50,
                              margin: EdgeInsets.only(
                                  top: 5, right: 0, bottom: 5, left: 0),
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                          color: Colors.transparent,
                                          child: SortOptionsBottomSheet());
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 24, // Adjust the width as needed
                                      height: 20, // Adjust the height as needed
                                      child: Image.asset(
                                          "assets/download_images/arrow.png"),
                                    ),
                                    Text('Sort'),
                                    Icon(Icons.arrow_drop_down),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            // Item Lists
                            Container(
                              height: 60,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: List.generate(
                                  arrItemImageText.length,
                                      (index) => Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                        4), // Adjust the horizontal padding as needed
                                    child: arrItemImageText[index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Grid List
                    Container(
                      height: MediaQuery.of(context).size.height / 1.268,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                          childAspectRatio: 1 / 2.3,
                        ),
                        itemCount: arrProductListImages.length, // Number of items in the grid
                        itemBuilder: (BuildContext context, int index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Center(
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
                                          child: arrProductListImages[index],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    // timer
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        width: 80,
                                        color: Colors.red.shade50,
                                        child: const Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.timelapse_rounded,
                                                size: 20,
                                              ),
                                              Text(
                                                '20 MINS',
                                                style: TextStyle(
                                                  color: Colors.brown,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    //Product Details
                                    Container(
                                      width: 110,
                                      margin: EdgeInsets.only(left: 3, top: 5, bottom: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.only(bottom: 5),
                                              child: arrProductListName[index]),
                                          Container(
                                              child: arrProductWeigthName[index])
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
                                          ProductButton(
                                            count: counts[index],
                                            increment: () => increment(index),
                                            decrement: () => decrement(index),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Left Sidebar Item List Container
            Positioned(
              top: 60, // Position below the app bar
              bottom: 0, // Take full height below the app bar
              left: 0,
              width: MediaQuery.of(context).size.width / 3.5, // Width for the sidebar
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 0), // changes position of shadow to the right
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(parent: ClampingScrollPhysics()),
                  child: Column(
                    children: List.generate(
                      10, // Number of items in the body
                          (index) => GestureDetector(
                        onTap:() => onSidebarItemTap(index),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top:5),
                              height: 100,
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),), // Set width to occupy full width
                              child: arrImageText[index],
                            ),
                            // Animated vertical line
                            if (selectedIndex == index)
                              AnimatedPositioned(
                                duration: Duration(milliseconds: 300), // Duration for the animation
                                top: selectedIndex == index ? 0 : 55, // Slide up or down based on selection
                                right: 0,
                                child: SlideTransition(
                                  position: selectedIndex == index
                                      ? Tween<Offset>(begin: Offset(0, -1), end: Offset.zero).animate(
                                    CurvedAnimation(
                                      parent: animationController,
                                      curve: Curves.ease,
                                    ),
                                  )
                                      : Tween<Offset>(begin: Offset(0, 1), end: Offset.zero).animate(
                                    CurvedAnimation(
                                      parent: animationController,
                                      curve: Curves.ease,
                                    ),
                                  ),
                                  child: Container(
                                    width: 4, // Width of the vertical line
                                    color: Colors.green, // Color of the vertical line
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // App Bar
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
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
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
                            'Category Items',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: (){
                              showSearch(
                                context: context,
                                delegate: MySearchDelegate(),
                              );
                            },
                          )
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
    );
  }
}

class MySearchDelegate extends SearchDelegate{
  List<String> searchResults = ['Burger', 'Chicken', 'Pizza', 'Maggi & Noodles', 'Biryani',];
  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
        onPressed: (){
          if(query.isEmpty){
            close(context, null);
          } else{
            query = '';
          }
        },
        icon: const Icon(Icons.clear)
    ),
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null), // close searchbar
      icon: const Icon(Icons.arrow_back)
  );

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query, style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult){
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: (){
            query = suggestion;
          },
        );
      },
    );
  }
}

//Grid View Add Button
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
            if (count > 0)
              GestureDetector(
                onTap: decrement,
                child: Icon(Icons.remove, size: 15),
              ),
            GestureDetector(
              onTap: () {
                if (count == 0) {
                  increment(); // Increment count to 1 if it's currently 0
                }
              },
              child: Text(
                count > 0 ? '$count' : 'ADD',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
            ),
            if (count > 0)
              GestureDetector(
                onTap: increment,
                child: Icon(Icons.add, size: 15),
              ),
          ],
        ),
      ),
    );
  }
}

*/
