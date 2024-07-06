import 'package:first_flutter_project_demo/pages/BottomSheet.dart';
import 'package:first_flutter_project_demo/pages/bottomCart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoryScreen extends StatefulWidget {
  @override
  CategoryScreenState createState() => CategoryScreenState();
}

class CategoryScreenState extends State<CategoryScreen> {
  String _searchQuery = '';

  late List<int> counts;
  //int counts = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize counts list with zeros for each grid tile
    counts = List<int>.filled(12, 0); // Example length
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
  int selectedIndex2 = 0;

  void onSidebarItemTap(int index) {
    setState(() {
      selectedIndex = index; // Update selected index
      //selectedIndex2 = 0; // Reset selected index for horizontal tabs
    });
  }

  void onHorizontalTabItemTap(int index) {
    setState(() {
      selectedIndex2 = index;
    });
  }

  // Left SideBar Product Image + Name List
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
  // Body -- Horizontal Tab Image + Name List Tab
  var arrItemImageText = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 5, left: 5),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 5, left: 5),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 5, left: 5),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 5, left: 5),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 5, left: 5),
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
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 5, left: 5),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 5, left: 5),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 5, left: 5),
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
  ];
  // 5 Gird View Product Details
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
  ];
  var arrProductListName = [
    Text(
      'Catch Cumin Seeds',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Madhur Pure & Hygienic Sulphurless',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Pizza',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Chicken Biryani',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Chicken Hakka Noodles',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Chicken Lollipop',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Achari Paneer Tikka',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Cheese Sandwich',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Pizza',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Text(
      'Chicken Biryani',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
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
  ]; // as nee

  Widget leftSideBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(
                1, 0), // changes position of shadow to the right
          ),
        ],
      ),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(
            parent: ClampingScrollPhysics()),
        child: Column(
          children: List.generate(
            arrImageText.length,
                (index) => GestureDetector(
              onTap: () {
                onSidebarItemTap(index);
                // Call horizontalFilterTab and productGridView functions on tap
                horizontalFilterTab();
                productGridView();
              },
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 100,
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // Highlight selected item
                      //color: selectedIndex == index ? Colors.blue.withOpacity(0.5) : null,
                    ),
                    child: arrImageText[index],
                  ),
                  // Add a vertical line to the right of the selected item
                  if (selectedIndex == index)
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 4, // Width of the vertical line
                          decoration: BoxDecoration(
                            color: Colors.green.shade700,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                bottomLeft: Radius.circular(100)),
                          ), // Color of the vertical line
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget horizontalFilterTab() {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          arrItemImageText.length,
              (index) => GestureDetector(
            onTap: () {
              onHorizontalTabItemTap(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
              ),
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10),
                  color: selectedIndex2 == index
                      ? Colors.green.shade200
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey
                          .withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 0.5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: arrItemImageText[index],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget productGridView() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.268,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1 / 2,
        ),
        itemCount: arrProductListImages.length, // Number of items in the grid
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 0, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Product Image ------------------------------------------------------------------------------------------------------
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue.shade50,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: ClipRRect(
                          child: arrProductListImages[selectedIndex],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 125,
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // timer -------------------------------------------------------------------------------------------------------------
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                        //Product Details ----------------------------------------------------------------------------------------------------
                        Container(
                          //color: Colors.yellow,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  child: arrProductListName[selectedIndex]),
                              Container(
                                  child: arrProductWeigthName[selectedIndex])
                            ],
                          ),
                        ),
                        //Button -------------------------------------------------------------------------------------------------------------
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 2, right: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    arrSimplePriceRate[selectedIndex],
                                    arrStrikeThroughPriceRate[selectedIndex],
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(1),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark));

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Stack(
          children: [
            // Product Item in Grid View ---------------------------------------------------------------------------------
            Positioned(
              top: 60,
              bottom: 0,
              left: MediaQuery.of(context).size.width / 4.2,
              width: MediaQuery.of(context).size.width * 3 / 4,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    /*children: [
                      // Horizontal Filter Tab ---------------------------------------------------------------------------------
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
                              // Sort By Container -----------------------------------------------------------------------
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
                                        height:
                                            20, // Adjust the height as needed
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
                              // Item Lists ------------------------------------------------------------------------------------
                              Container(
                                height: 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: List.generate(
                                    arrItemImageText.length,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        onHorizontalTabItemTap(index);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4,
                                        ),
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: selectedIndex2 == index
                                                ? Colors.green.shade200
                                                : Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 0.5,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                          child: arrItemImageText[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Grid List -------------------------------------------------------------------------------------------
                      Container(
                        height: MediaQuery.of(context).size.height / 1.268,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                            childAspectRatio: 1 / 2,
                          ),
                          itemCount: arrProductListImages
                              .length, // Number of items in the grid
                          itemBuilder: (BuildContext context, int index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color: Colors.white,
                                padding:
                                    const EdgeInsets.only(top: 0, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    //Product Image ------------------------------------------------------------------------------------------------------
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
                                      child: Container(
                                        //height: 110,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        color: Colors.blue.shade50,
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: ClipRRect(
                                            //borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                            child: arrProductListImages[
                                                selectedIndex],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 125,
                                      //color: Colors.purple,
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // timer -------------------------------------------------------------------------------------------------------------
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Container(
                                              width: 80,
                                              color: Colors.red.shade50,
                                              child: const Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
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
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          //Product Details ----------------------------------------------------------------------------------------------------
                                          Container(
                                            //color: Colors.yellow,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            //margin: EdgeInsets.only(top: 5, bottom: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 5),
                                                    child: arrProductListName[
                                                        selectedIndex]),
                                                Container(
                                                    child: arrProductWeigthName[
                                                        selectedIndex])
                                              ],
                                            ),
                                          ),
                                          //Button -------------------------------------------------------------------------------------------------------------
                                          Container(
                                            //color: Colors.lightBlue,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            padding: EdgeInsets.only(
                                                left: 2, right: 2),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      arrSimplePriceRate[
                                                          selectedIndex],
                                                      arrStrikeThroughPriceRate[
                                                          selectedIndex],
                                                    ],
                                                  ),
                                                ),
                                                ProductButton(
                                                  count: counts[index],
                                                  increment: () =>
                                                      increment(index),
                                                  decrement: () =>
                                                      decrement(index),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],*/
                    children: [
                      // Horizontal Filter Tab ---------------------------------------------------------------------------------
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
                              // Sort By Container -----------------------------------------------------------------------
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
                                        height:
                                        20, // Adjust the height as needed
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
                              // Item Lists ------------------------------------------------------------------------------------
                             /* Container(
                                height: 60,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: List.generate(
                                    arrItemImageText.length,
                                        (index) => GestureDetector(
                                      onTap: () {
                                        onHorizontalTabItemTap(index);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4,
                                        ),
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: selectedIndex2 == index
                                                ? Colors.green.shade200
                                                : Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 0.5,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                          child: arrItemImageText[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),*/
                              horizontalFilterTab(),
                            ],
                          ),
                        ),
                      ),
                       // Replace horizontal filter tab section with function call
                      productGridView(), // Replace grid view section with function call
                    ],
                  ),
                ),
              ),
            ),
            // Left Sidebar Item List Container ----------------------------------------------------------------------------------------------------------------
            Positioned(
              top: 60, // Position below the app bar
              bottom: 0, // Take full height below the app bar
              left: 0,
              width: MediaQuery.of(context).size.width /
                  4.5, // Width for the sidebar
             /* child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: Offset(
                          1, 0), // changes position of shadow to the right
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: ClampingScrollPhysics()),
                  child: Column(
                    children: List.generate(
                      arrImageText.length, // Number of items in the body
                      (index) => GestureDetector(
                        onTap: () {
                          onSidebarItemTap(index);
                          print("Left Side Bar List<index>: $index");
                          print("Right Index:  $selectedIndex");
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              height: 100,
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                //color: selectedIndex == index ? Colors.blue.withOpacity(0.5) : null, // Highlight selected item
                              ), // Set width to occupy full width
                              child: arrImageText[index],
                            ),
                            // Add a vertical line to the right of the selected item
                            if (selectedIndex == index)
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 4, // Width of the vertical line
                                    decoration: BoxDecoration(
                                        color: Colors.green.shade700,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(100),
                                            bottomLeft: Radius.circular(
                                                100))), // Color of the vertical line
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),*/
              child: leftSideBar(), // Replace left sidebar section with function call
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
                            'Category Items',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
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

            //Bottom Cart Bar
            BottomCart(),
          ],
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Burger',
    'Chicken',
    'Pizza',
    'Maggi & Noodles',
    'Biryani',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: const Icon(Icons.clear)),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null), // close searchbar
      icon: const Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
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
          onTap: () {
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
