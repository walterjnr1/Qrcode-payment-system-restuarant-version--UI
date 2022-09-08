import 'dart:convert';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key, livestock}) : super(key: key);

  @override
  ProductListState createState() => ProductListState();
}

class ProductListState extends State<ProductList> {
  final int _currentIntValue = 0;
  bool isLoading = false;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          'Product List',
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
        actions: <Widget>[
          const SizedBox(
            width: 20,
          ),
          Badge(
            child: const Icon(
              Icons.shopping_cart,
              size: 25,
              color: Colors.black,
            ), //icon style
            badgeContent: const SizedBox(
                width: 13,
               // height: 13, //badge size
                child: Center(
                  //aligh badge content to center
                  child: Text("17",
                      style: TextStyle(
                          color: Colors.white, //badge font color
                          fontSize: 10 //badge font size
                          )),
                )),
            badgeColor: Colors.orange, //badge background color
          ),
          const SizedBox(
            width: 25,
          ),
        ],
        elevation: 0,
      ),
      body: Center(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        child: Column(children: [
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
          Center(
            /** Card Widget **/
            child: Banner(
              message: "N59,000",
              location: BannerLocation.topStart,
              color: Colors.red,
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  width: 400,
                  height: 240,
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Column(

                      children: [
                        const CircleAvatar(
                          //  backgroundImage: NetworkImage(
                          //      "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"
                          //  ), //NetworkImage
                          backgroundImage: AssetImage('assets/8.jpg'),

                          radius: 70,
                        ),
                        const Text(
                          'Bread',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        ButtonBar(
                          alignment: MainAxisAlignment.spaceBetween,
                          buttonPadding: const EdgeInsets.symmetric(),
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child: CustomNumberPicker(
                                initialValue: _currentIntValue,
                                maxValue: 1000000,
                                minValue: 0,
                                step: 1,
                                onValue: (value) {
                                  print(value.toString());
                                },
                              ),
                              color: Colors.deepOrangeAccent,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrangeAccent,
                                  shape: const StadiumBorder()),
                              onPressed: () {},
                              child: const Text('Sell'),
                            ),
                          ],
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ), //Card
            ), //Cent
          ),
          Center(
            /** Card Widget **/
            child: Banner(
              message: "N5,000",
              location: BannerLocation.topStart,
              color: Colors.red,
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  width: 400,
                  height: 240,
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          //  backgroundImage: NetworkImage(
                          //      "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"
                          //  ), //NetworkImage
                          backgroundImage: AssetImage('assets/1.jpg'),

                          radius: 70,
                        ), //CircleAvatar

                        const Text(
                          'Rice',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        ButtonBar(
                          alignment: MainAxisAlignment.spaceBetween,
                          buttonPadding: const EdgeInsets.symmetric(),
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child: CustomNumberPicker(
                                initialValue: _currentIntValue,
                                maxValue: 1000000,
                                minValue: 0,
                                step: 1,
                                onValue: (value) {
                                  print(value.toString());
                                },
                              ),
                              color: Colors.deepOrangeAccent,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrangeAccent,
                                  shape: const StadiumBorder()),
                              onPressed: () {},
                              child: const Text('Sell'),
                            ),
                          ],
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ), //Card
            ), //Cent
          )
        ]),
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  begin: Alignment(0.7, -0.5),
                  end: Alignment(0.6, 0.5),
                  colors: [
                    Color(0xFF53a78c),
                    Color(0xFF70d88b),
                  ],
                ),
              ),
              child: const Icon(Icons.logout, size: 30),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.lightBlueAccent[700],
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Menu",
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
