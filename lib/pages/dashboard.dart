import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qr_code_payment_system/pages/product_list.dart';
import 'package:qr_code_payment_system/pages/profile.dart';
import 'package:qr_code_payment_system/pages/transactions.dart';
import 'package:qr_code_payment_system/pages/welcome.dart';
import 'add_product.dart';
import 'dashboard2.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Expanded(
              child: Text("RESTAURANT DASHBOARD",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(' '),
                GestureDetector(
                  onTap: () {
                    //logout();
                  },
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(7),
   child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
        child: Column(children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/6.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //6th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/8.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 130.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.5,
            ),
          ),
          const Divider(
            thickness: 1.0, // thickness of the line
            indent: 0, // empty space to the leading edge of divider.
            endIndent: 0, // empty space to the trailing edge of the divider.
            color: Colors.deepOrangeAccent, // The color to use when painting the line.
            height: 25, // The divider's height extent.
          ),

          Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                  child: const Text("Resturant Name : Monty Annex ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0)),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                    child: const Text("Owner: Ndueso Walter Okorie",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0))),
                Container(
                    margin: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                    child: const Text("Balance: N89,000",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0))),
              ],
            ),
          ),

          const Divider(
            thickness: 1.0, // thickness of the line
            indent: 0, // empty space to the leading edge of divider.
            endIndent: 0, // empty space to the trailing edge of the divider.
            color: Colors.deepOrangeAccent, // The color to use when painting the line.
            height: 25, // The divider's height extent.
          ),

          //Menu buttons
          Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox.fromSize(
                  size: const Size(90, 90),
                  child: ClipOval(
                    child: Material(
                      color: Colors.deepOrangeAccent,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Product()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.add, size: 30.0), // <-- Icon
                            Text(
                              "Add Product",
                              style: TextStyle(
                                  fontSize: 7.0, fontWeight: FontWeight.bold,color: Colors.white, ),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox.fromSize(
                  size: const Size(90, 90),
                  child: ClipOval(
                    child: Material(
                      color: Colors.deepOrangeAccent,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProductList()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.list_sharp, size: 30.0), // <-- Icon
                            Text(
                              "Product List(s)",
                              style: TextStyle(
                                  fontSize: 7.0, color: Colors.white,fontWeight: FontWeight.bold),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),


            ],
          ),
         const SizedBox(
            height: 12,
          ),
          Wrap(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox.fromSize(
                  size: const Size(90, 90),
                  child: ClipOval(
                    child: Material(
                      color: Colors.deepOrangeAccent,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Profile()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.account_box_outlined, size: 30.0), // <-- Icon
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 7.0, fontWeight: FontWeight.bold, color: Colors.white),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox.fromSize(
                  size: const Size(90, 90),
                  child: ClipOval(
                    child: Material(
                      color: Colors.deepOrangeAccent,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Transactions()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.euro_symbol_outlined, size: 30.0), // <-- Icon
                            Text(
                              "Transaction(s)",
                              style: TextStyle(
                                  fontSize: 7.0, fontWeight: FontWeight.bold, color: Colors.white),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),

        ] //<------
            ),
      ),
      )
    );
  }
}
