import 'package:flutter/material.dart';

class invoicePage extends StatelessWidget {
  const invoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            elevation: 0,
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left : 5),
                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11.0),
                          child: Text(
                            "Invoice",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50   , left: 15),
                        child: Text(
                          "Invoice#",
                          style: TextStyle(fontSize: 7),
                        ),
                      ),
                      Text(
                        "004",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4, left: 15),
                      child: Text(
                        "Invoice Date",
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 55, left: 33),
                      child: Text(
                        "NOV 6  2023",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 1, left: 15),
                      child: Text(
                        "Due",
                        style: TextStyle(
                          fontSize: 7,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 66)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ,
                      child: Text(
                        "NOV 7 2023",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.0,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(right:15.0),
                          child: Container(
                            height: 100,
                            width: 155,
                            color: Color.fromARGB(21, 37, 37, 37),
                            padding: const EdgeInsets.only(top: 10, left: 9),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        "Billed by",
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0.0, right: 12),
                                      child: Text(
                                        "Footbar",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "46, Raghuveer Dham Society",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Bengluru Dham Society",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 0, right: 9),
                                      child: Text(
                                        "GSTIN",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "29ABCED1234F2Z5",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 0, right: 4),
                                      child: Text(
                                        "PAN",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(top: 5, left: 12),
                                      child: Text(
                                        "ABCED123F225",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Container(
                          height: 100,
                          width: 150,
                          color: Color.fromARGB(21, 37, 37, 37),
                          padding: const EdgeInsets.only(top: 6, left: 9),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      "Billed to",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0.0, right: 12),
                                    child: Text(
                                      "Wox Studio",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "46, Raghuveer Dham Society",
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Bengluru Dham Society",
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 0, right: 9),
                                    child: Text(
                                      "GSTIN",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 0, right: 9),
                                    child: Text(
                                      "29ABCED1234F2Z5",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 0, right: 4),
                                    child: Text(
                                      "PAN",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 5, left: 12),
                                    child: Text(
                                      "VGCED1234K",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(bottom: 1.0, left: 15, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Place of Supply ",
                        style: TextStyle(fontSize: 8),
                      ),
                      Text(
                        "INDORE ",
                        style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Country of Supply",
                        style: TextStyle(fontSize: 8),
                      ),
                      Text(
                        "India",
                        style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Container(
                    height: 20,
                    width: 330,
                    padding: const EdgeInsets.only(left: 10.0, right: 5,top:3),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text("Item#/Item Description",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  )),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 1.0, right: 30),
                              child: Text("HSN",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: .0, right: 1),
                              child: Text("Qty",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: .0, right: 1),
                              child: Text("GST",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: .0, right: 1),
                              child: Text("Texable Amount",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: .0, right: 1),
                              child: Text("SGST",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: .0, right: 1),
                              child: Text("CGST",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: .0, right: 1),
                              child: Text("Amount",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 64, 64, 64),
                      borderRadius:
                      BorderRadius.circular(2), // Adjust the radius as needed
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  child: Container(
                    height: 20,
                    width: 2000,
                    padding: const EdgeInsets.only(left: 15, right: 1, bottom: 1),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "1.",
                              style: TextStyle(color: Colors.black, fontSize: 8),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 1.0, right: 30),
                              child: Text("Basic Web Development",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 1),
                              child: Text("02",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 2),
                              child: Text("10",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 6),
                              child: Text("  9%",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 1, right: 0),
                              child: Text("  ₹10,000",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                  )),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("     ₹900",
                                        style: TextStyle(fontSize: 8)),
                                    Text("  ₹900",
                                        style: TextStyle(
                                            fontSize:
                                            8)), // Add the additional text
                                    Text("   ₹11800",
                                        style: TextStyle(
                                            fontSize:
                                            8)), // Add the additional text
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            SizedBox(height: 15),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius:
                      BorderRadius.circular(2), // Adjust the radius as needed
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    height: 20,
                    width: 2000,
                    padding: const EdgeInsets.only(left: 15, right: 1),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "2.",
                              style: TextStyle(color: Colors.black, fontSize: 8),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 1.0, right: 74),
                              child: Text("Logo Design",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 1),
                              child: Text("06",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 2),
                              child: Text("1",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 6),
                              child: Text("    9%",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 1, right: 0),
                              child: Text("  ₹10,000",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                  )),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("     ₹900",
                                        style: TextStyle(fontSize: 8)),
                                    Text("  ₹900",
                                        style: TextStyle(
                                            fontSize:
                                            8)), // Add the additional text
                                    Text("   ₹11800",
                                        style: TextStyle(
                                            fontSize:
                                            8)), // Add the additional text
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            SizedBox(height: 15),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius:
                      BorderRadius.circular(2), // Adjust the radius as needed
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    height: 20,
                    width: 2000,
                    padding: const EdgeInsets.only(left: 15, right: 1),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "3.",
                              style: TextStyle(color: Colors.black, fontSize: 8),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 1.0, right: 77),
                              child: Text("Web Design",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 1),
                              child: Text("02",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 2),
                              child: Text("10",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 6),
                              child: Text("  9%",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 1, right: 0),
                              child: Text("  ₹10,000",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                  )),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("     ₹900",
                                        style: TextStyle(fontSize: 8)),
                                    Text("  ₹900",
                                        style: TextStyle(
                                            fontSize:
                                            8)), // Add the additional text
                                    Text("   ₹11800",
                                        style: TextStyle(
                                            fontSize:
                                            8)), // Add the additional text
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            SizedBox(height: 15),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius:
                      BorderRadius.circular(2), // Adjust the radius as needed
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    height: 20,
                    width: 2000,
                    padding: const EdgeInsets.only(left: 15, right: 1),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "4.",
                              style: TextStyle(color: Colors.black, fontSize: 8),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 1.0, right: 30),
                              child: Text("Basic Web Development",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 1),
                              child: Text("02",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 2),
                              child: Text("10",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 6),
                              child: Text("  9%",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8)),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 1, right: 0),
                              child: Text("  ₹10,000",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                  )),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("     ₹900",
                                        style: TextStyle(fontSize: 8)),
                                    Text("  ₹900",
                                        style: TextStyle(
                                            fontSize:
                                            8)), // Add the additional text
                                    Text("   ₹11800",
                                        style: TextStyle(
                                            fontSize:
                                            8)), // Add the additional text
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            SizedBox(height: 15),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(2), // Adjust the radius as needed
                    ),
                  ),
                ),
                SizedBox(height: 4,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 225.0, top: 1),
                      child: Text(
                        "Sub Total",
                        style: TextStyle(fontSize: 9),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0, right: 1),
                      child: Text(
                        "₹40,000",
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18, top: 1),
                      child: Text(
                        "Bank & Payment Details",
                        style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),


                  ],
                ),
                SizedBox(height: 16,),
                Container(
                  height:165,
                  width: 380,
                  color: Color.fromARGB(255, 255, 255, 255),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(

                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:4.0),
                                child: Container(
                                  height:165,
                                  width: 135,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "         Account Holder Name",
                                            style: TextStyle(
                                              fontSize: 6,
                                            ),


                                          ),
                                          Text(
                                            "    Foobar Labs",
                                            style: TextStyle(
                                                fontSize: 7,
                                                fontWeight: FontWeight.bold
                                            ),

                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 1,),
                                      Row(
                                        children: [
                                          Text(
                                            "         Account Number",
                                            style: TextStyle(
                                              fontSize: 6,
                                            ),


                                          ),
                                          Text(
                                            "           43966287987",
                                            style: TextStyle(
                                                fontSize: 7,
                                                fontWeight: FontWeight.bold
                                            ),

                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 1,),
                                      Row(
                                        children: [
                                          Text(
                                            "         IFSC",
                                            style: TextStyle(
                                              fontSize: 6,

                                            ),


                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            "    SBIN0018159",
                                            style: TextStyle(
                                                fontSize: 7,
                                                fontWeight: FontWeight.bold
                                            ),

                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 1,),
                                      Row(
                                        children: [
                                          Text(
                                            "        Account Type",
                                            style: TextStyle(
                                              fontSize: 6,

                                            ),


                                          ),
                                          SizedBox(width: 20,),
                                          Text(
                                            "        Savings",
                                            style: TextStyle(

                                                fontSize: 7,
                                                fontWeight: FontWeight.bold
                                            ),

                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 1,),
                                      Row(
                                        children: [
                                          Text(
                                            "       Bank",
                                            style: TextStyle(
                                              fontSize: 7,
                                            ),


                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            "    43966287987",
                                            style: TextStyle(
                                                fontSize: 7,
                                                fontWeight: FontWeight.bold
                                            ),

                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 1,),
                                      Row(
                                        children: [
                                          Text(
                                            "        UPI",
                                            style: TextStyle(
                                              fontSize: 6,
                                            ),


                                          ),
                                          SizedBox(width:57),
                                          Text(
                                            "    43966287987",
                                            style: TextStyle(
                                                fontSize: 7,
                                                fontWeight: FontWeight.bold
                                            ),

                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2,),


                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),













                          Container(
                            color:const Color.fromARGB(255, 255, 255, 255),


                            child: Column(
                              children: [
                                Text(
                                  "UPI-Scan to Pay",

                                  style: TextStyle(fontSize: 7,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Image.asset(
                                    'assets/images/barcode.jpg',
                                    height: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:2),
                            child: Container(
                              color:Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Discount(10%)",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                      SizedBox(width: 35,),
                                      Text(
                                        "  -₹4000",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                    ],
                                  ),
                                  Row(

                                    children: [
                                      Text(
                                        "   Taxable Amount",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                      SizedBox(width: 30, height: 15,),
                                      Text(
                                        "   ₹36,000",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                    ],
                                  ),
                                  Row(

                                    children: [
                                      Text(
                                        " CGST",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                      SizedBox(width: 68,),
                                      Text(
                                        "  ₹3,240",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                    ],
                                  ),
                                  Row(

                                    children: [
                                      Text(
                                        " SGST",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                      SizedBox(width: 68,),
                                      Text(
                                        "  ₹3,240",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                    ],
                                  ),
                                  Divider(color: Colors.black12,),
                                  Row(

                                    children: [
                                      Text(
                                        "Total",
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),),
                                      SizedBox(width: 50, height: 20,),
                                      Text(
                                        "     ₹42,480",
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ],
                                  ),
                                  Row(

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right:60.0),
                                        child: Text(
                                          "Invoice Total(in words)",
                                          style: TextStyle(
                                            fontSize: 5,
                                          ),),
                                      ),

                                    ],
                                  ),
                                  Row(

                                    children: [
                                      Text(
                                        "Forty-Two Thousand Four Hundred And \nEighty Rupees Only",
                                        style: TextStyle(
                                            fontSize: 6,
                                            fontWeight: FontWeight.bold
                                        ),),

                                    ],
                                  ),
                                  Divider(),

                                  Row(

                                    children: [
                                      Text(
                                        "EarlyPay Discount",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                      SizedBox(width: 30, height: 15,),
                                      Text(
                                        "     ₹200",
                                        style: TextStyle(
                                          fontSize: 7,
                                        ),),
                                    ],
                                  ),
                                  Row(

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right:24.0),
                                        child: Text(
                                          "if paid before Dec 19.2019 | 09:00 PM",
                                          style: TextStyle(
                                            fontSize: 5,
                                          ),),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(

                                    children: [
                                      Text(
                                        "EarlyPayAmount",
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      SizedBox(width: 30, height: 15,),
                                      Text(
                                        "     ₹42,380",
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ],
                                  ),






                                ],
                              ),
                            ),
                          ),





                        ],

                      ),


                    ],
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left:1.0,bottom:1),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:9.0),
                            child: Text(
                              "  Terms and Conditions",
                              style: TextStyle(
                                  fontSize: 7,fontWeight: FontWeight.bold
                              ),
                            ),

                          ),

                        ],

                      ),


                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left:9.0),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:                                                                                      .0,right:15),
                        child: Text(
                          "       1. Please pay within 15 days from the date of invoice overdue interest @14%\n          will be charged on delayed payments ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 5,
                          ),
                        ),
                      ),

                    ],

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:0),
                        child: Text(
                          "      2. Please quote invoice number when remitting funds",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 5,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:1.0),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:11.0),
                        child: Text(
                          "  Additional Notes",
                          style: TextStyle(
                              fontSize: 7,fontWeight: FontWeight.bold

                          ),
                        ),

                      ),
                      SizedBox(height: 20,),

                    ],


                  ),


                ),


                Padding(
                  padding: const EdgeInsets.only(left:7.0),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:9,right:15),
                        child: Text(
                          "     it is a long established fact that a reaer will be distracted by the readable \n     content of a page when looking at its layout. The point of using Lorem lpsum\n     Is that it has a more-or-less normal distribution of letters, as opposed to using\n    Content here , content here",
                          style: TextStyle(
                              fontSize: 5,

                              fontWeight: FontWeight.bold

                          ),
                        ),
                      ),

                    ],
                  ),
                ),


                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:7.0),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:0),
                        child: Text(
                          "      For any anquries,amil us on sandeep886626@gmail.com or call us on\n      +917415743916",
                          style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 6,
                          ),
                        ),
                      ),

                    ],
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