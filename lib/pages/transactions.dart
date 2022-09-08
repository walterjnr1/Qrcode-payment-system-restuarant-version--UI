import 'dart:convert';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key, livestock}) : super(key: key);

  @override
  TransactionsState createState() =>TransactionsState();
}
class TransactionsState extends State<Transactions> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transactions list',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundColor: Colors.deepOrangeAccent,
            radius: 30,
            child: Icon(Icons.arrow_back),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        elevation: 0,
      ),
      body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(7),
            scrollDirection: Axis.vertical,
            child: Column(
                children: [
              Container(
                height: 40.0,
                padding: const EdgeInsets.fromLTRB(13.0, 2.0, 2.0, 2.0),
                alignment: Alignment.center,
                child: TextField(
                  onChanged: (query) {
                    // getLivestockList_search();
                    setState(() {
                      //   txtsearch_f.text.isEmpty ? getLivestockList() : getLivestockList_search();
                    });
                  },
                  //  controller: txtsearch_f,
                  decoration: InputDecoration(
                      labelText: "Search",
                      hintText: "Search Livestock",
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        onPressed: () {
                          //  txtsearch_f.text="";
                          setState(() {
                            //    txtsearch_f.text.isEmpty ? getLivestockList() : getLivestockList_search();
                          });
                        },
                        icon: const Icon(Icons.cancel),
                      ),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                ),
              ),
              Container(
                height: 20,
              ),

              Container(

                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 2.0, 7.4),
                height: 90,
               // color: const Color(0xffCCCCCC),
                color: Colors.deepOrange[50],

                width: double.infinity,
                child:Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children:  const [
                      Text(
                        'Sex: female',
                        style: TextStyle(
                          fontSize: 12.5,
                          //height: 3.5, //You can set your custom height here
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Weight: 22+kg',
                        style: TextStyle(
                          fontSize: 12.5,
                          //height: 3.5, //You can set your custom height here
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Livestock No: 232354',
                        style: TextStyle(
                          fontSize: 12.5,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Health Status: Sick',
                        style: TextStyle(
                          fontSize: 12.5,
                          //height: 3.5, //You can set your custom height here
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Registration Date: 12/4/2020',
                        style: TextStyle(
                          fontSize: 12.5,
                          color: Colors.black,
                        ),
                      ),
                      ]
                    ),
                 ),
                  const Divider(
                    thickness: 0.5, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent: 0, // empty space to the trailing edge of the divider.
                    color: Colors.grey, // The color to use when painting the line.
                    height: 5, // The divider's height extent.
                  ),
                  Container(

                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 2.0, 7.4),
                    height: 90,
                    // color: const Color(0xffCCCCCC),
                    color: Colors.deepOrange[50],

                    width: double.infinity,
                    child:Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children:  const [
                          Text(
                            'Sex: female',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Weight: 22+kg',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Livestock No: 232354',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Health Status: Sick',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Registration Date: 12/4/2020',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),
                        ]
                    ),
                  ),
                  const Divider(
                    thickness: 0.5, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent: 0, // empty space to the trailing edge of the divider.
                    color: Colors.grey, // The color to use when painting the line.
                    height: 5, // The divider's height extent.
                  ),
                  Container(

                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 2.0, 7.4),
                    height: 90,
                    // color: const Color(0xffCCCCCC),
                    color: Colors.deepOrange[50],

                    width: double.infinity,
                    child:Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children:  const [
                          Text(
                            'Sex: female',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Weight: 22+kg',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Livestock No: 232354',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Health Status: Sick',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Registration Date: 12/4/2020',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),
                        ]
                    ),
                  ),
                  const Divider(
                    thickness: 0.5, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent: 0, // empty space to the trailing edge of the divider.
                    color: Colors.grey, // The color to use when painting the line.
                    height: 5, // The divider's height extent.
                  ),
                  Container(

                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 2.0, 7.4),
                    height: 90,
                    // color: const Color(0xffCCCCCC),
                    color: Colors.deepOrange[50],

                    width: double.infinity,
                    child:Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children:  const [
                          Text(
                            'Sex: female',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Weight: 22+kg',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Livestock No: 232354',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Health Status: Sick',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Registration Date: 12/4/2020',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),
                        ]
                    ),
                  ),
                  const Divider(
                    thickness: 0.5, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent: 0, // empty space to the trailing edge of the divider.
                    color: Colors.grey, // The color to use when painting the line.
                    height: 5, // The divider's height extent.
                  ),
                  Container(

                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 2.0, 7.4),
                    height: 90,
                    // color: const Color(0xffCCCCCC),
                    color: Colors.deepOrange[50],

                    width: double.infinity,
                    child:Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children:  const [
                          Text(
                            'Sex: female',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Weight: 22+kg',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Livestock No: 232354',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Health Status: Sick',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Registration Date: 12/4/2020',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),
                        ]
                    ),
                  ),
                  const Divider(
                    thickness: 0.5, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent: 0, // empty space to the trailing edge of the divider.
                    color: Colors.grey, // The color to use when painting the line.
                    height: 5, // The divider's height extent.
                  ),
                  Container(

                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 2.0, 7.4),
                    height: 90,
                    // color: const Color(0xffCCCCCC),
                    color: Colors.deepOrange[50],

                    width: double.infinity,
                    child:Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children:  const [
                          Text(
                            'Sex: female',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Weight: 22+kg',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Livestock No: 232354',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Health Status: Sick',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Registration Date: 12/4/2020',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),
                        ]
                    ),
                  ),
                  const Divider(
                    thickness: 0.5, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent: 0, // empty space to the trailing edge of the divider.
                    color: Colors.grey, // The color to use when painting the line.
                    height: 5, // The divider's height extent.
                  ),
                  Container(

                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 2.0, 7.4),
                    height: 90,
                    // color: const Color(0xffCCCCCC),
                    color: Colors.deepOrange[50],

                    width: double.infinity,
                    child:Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children:  const [
                          Text(
                            'Sex: female',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Weight: 22+kg',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Livestock No: 232354',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Health Status: Sick',
                            style: TextStyle(
                              fontSize: 12.5,
                              //height: 3.5, //You can set your custom height here
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            'Registration Date: 12/4/2020',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.black,
                            ),
                          ),
                        ]
                    ),
                  ),
                  const Divider(
                    thickness: 0.5, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent: 0, // empty space to the trailing edge of the divider.
                    color: Colors.grey, // The color to use when painting the line.
                    height: 5, // The divider's height extent.
                  ),


        ]
    )
    )
      )
    );
  }
}
