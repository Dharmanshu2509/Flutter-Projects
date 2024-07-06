import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SortOptionsBottomSheet extends StatefulWidget {
  @override
  _SortOptionsBottomSheetState createState() => _SortOptionsBottomSheetState();
}

class _SortOptionsBottomSheetState extends State<SortOptionsBottomSheet> {
  String? selectedOption;
  String? previouslySelectedOption;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: EdgeInsets.only(
                    top: 20, left: 15, right: 15, bottom: 15),
                child: Text('Sort By', style: TextStyle(color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),)
            ),
            Divider(),
            RadioListTile(
              title: Text('Relevance (default)', style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
              value: 'Option 1',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            RadioListTile(
              title: Text('Price (Low to High)', style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
              value: 'Option 2',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            RadioListTile(
              title: Text('Price (High to Low)', style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
              value: 'Option 3',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            RadioListTile(
              title: Text('Popularity', style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
              value: 'Option 4',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            RadioListTile(
              title: Text('Discount (High to Low)', style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
              value: 'Option 5',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle sorting based on selectedOption
                  Navigator.pop(context);
                },
                child: Text('Apply'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Class for add product bottom sheet
class AddProductBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(
        bottom: keyboardHeight,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Product',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Price',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Add product logic goes here
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
