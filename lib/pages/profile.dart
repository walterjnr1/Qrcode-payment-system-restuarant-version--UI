import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qr_code_payment_system/pages/product_list.dart';
import 'package:qr_code_payment_system/pages/transactions.dart';
import 'package:qr_code_payment_system/pages/welcome.dart';
import '../UI_Model/Theme.dart';
import 'add_product.dart';
import 'dashboard2.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Expanded(
                child: Text("USER PROFILE",
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
          leading: IconButton(
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: Icon(Icons.arrow_back),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                     image: AssetImage("assets/profile-screen-bg-min.png"),

                      fit: BoxFit.fitWidth)
              )
          ),
          SafeArea(
            child: ListView(children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, top: 74.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                              const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: .0,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 85.0, bottom: 20.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: ArgonColors.info,
                                                borderRadius:
                                                BorderRadius.circular(3.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 1,
                                                    blurRadius: 7,
                                                    offset: const Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),

                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 40.0),

                                        const SizedBox(height: 40.0),
                                        const Align(
                                          child: Text("Jessica Jones, 27",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      50, 50, 93, 1),
                                                  fontSize: 28.0)),
                                        ),
                                        const SizedBox(height: 10.0),
                                        const Align(
                                          child: Text("Username : Walterjnr1",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      50, 50, 93, 1),
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w200)),
                                        ),
                                        const Divider(
                                          height: 40.0,
                                          thickness: 1.5,
                                          indent: 32.0,
                                          endIndent: 32.0,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0),
                                          child: Align(
                                            child: Text(
                                                "Email : montyannex@gmail.com",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        82, 95, 127, 1),
                                                    fontSize: 17.0,
                                                    fontWeight:
                                                    FontWeight.w200)
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15.0),
                                        const Align(
                                            child: Text(
                                                "12 Okop eto rd, Ikot Ekpene",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        82, 95, 127, 1),
                                                    fontSize: 17.0,
                                                    fontWeight:
                                                    FontWeight.w200)
                                            ),
                                        ),
                                        const SizedBox(height: 25.0),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0, left: 25.0),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                "08067361023",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0,
                                                    color: ArgonColors.text),
                                              ),
                                              Text(
                                                "View All",
                                                style: TextStyle(
                                                    color: ArgonColors.primary,
                                                    fontSize: 13.0,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      const FractionalTranslation(
                          translation:  Offset(0.0, -0.5),
                          child: Align(
                            child:  CircleAvatar(
                              //  backgroundImage: NetworkImage(
                              //      "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"
                              //  ), //NetworkImage
                              backgroundImage: AssetImage('assets/Yomi.png'),

                              radius: 70,
                            ),
                            alignment: FractionalOffset(0.5, 0.0),
                          )
                      )
                    ]
                    ),
                  ],
                ),
              ),
            ]),
          )
        ]));
  }
}
