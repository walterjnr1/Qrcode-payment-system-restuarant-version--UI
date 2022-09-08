import 'dart:convert';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';

class QRcodeImage extends StatefulWidget {
  const QRcodeImage({Key? key}) : super(key: key);


  @override
  QRcodeImageState createState() =>QRcodeImageState();
}
class QRcodeImageState extends State<QRcodeImage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Generated QR Code ',
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

                       //alignment: Alignment.center,

                       child:Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,

                            children:   [
                               Image.asset(
                                'assets/qrcode.png',
                                height: 400,
                                width: 200,
                              ),


                            ]
                        ),
                      ),

);

  }
}
