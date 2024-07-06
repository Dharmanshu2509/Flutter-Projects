import 'dart:math';
import 'package:first_flutter_project_demo/pages/categoryScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State <HomeScreen2> {

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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(1),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark
    ));

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

    /*var arrImages = [
      Image.asset('assets/images/Achari_Paneer_Tikka.jpeg'),
      Image.asset('assets/images/Cheese_Sandwich.jpeg'),
      Image.asset('assets/images/pizza.jpeg'),
      Image.asset('assets/images/Chicken_Biryani.jpeg'),
      Image.asset('assets/images/Chicken_Hakka_Noodles.jpeg'),
      Image.asset('assets/images/Chicken_Lollipop.jpeg'),
    ];*/

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
      ),*/
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
      backgroundColor: Colors.white,
      body:SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //App Bar
              Container(
                height: 170,
                width: double.infinity,
                //color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Time, Location & Profile
                    Container(
                      padding: const EdgeInsets.only(left: 5, top: 5, bottom: 0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Time & Location
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 10, bottom: 10),
                            child: SizedBox(
                              height: 80,
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
                                      Container(
                                        width: 250, // Set the maximum width for the text
                                        child: Text(
                                          locationText,
                                          maxLines: 1, // Limit the text to a single line
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
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //Profile
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
                              child: const Icon(
                                Icons.account_circle_outlined,
                                size: 45,
                                color: Colors.black,
                              )
                          ),
                        ],
                      ),
                    ),
                    //Search Bar
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 8, bottom: 8, right: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
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
              // One Row for Recent Item
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryScreen(),
                      )
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(top:10, left: 5, right: 5),
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
              ),
              // Recent Item List View
              Container(
                height: 210, // Set a fixed height
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
                                  /* child: arrImages[index]*/
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
                margin: EdgeInsets.only(top: 00, bottom: 00),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3), // Adjust delay here
                        enlargeCenterPage: true
                    ), items: [
                    Container(
                      //width: MediaQuery.of(context).size.width,
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
              //Category GridView
              Container(
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
                /*margin: EdgeInsets.only(bottom: 10, top: 0),*/
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
                                          ),*/
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
                                        ),*/
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
                                        ),*/
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
    );
  }
}