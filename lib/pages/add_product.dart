import 'package:qr_code_payment_system/UI_Model/Theme.dart';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {  bool isLoading = false;
  TextEditingController txtproduct_f = TextEditingController();
TextEditingController txtamount_f = TextEditingController();

  //final double height = window.physicalSize.height;
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
              children: const [
                Expanded(
                  child: Text(
                    "",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            elevation: 0,
            backgroundColor: Colors.deepOrangeAccent,
            leading: IconButton(
              icon: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(Icons.arrow_back),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 700,
              color: Colors.deepOrangeAccent[200],
              alignment: Alignment.center,
            ),
            SafeArea(
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16, left: 24.0, right: 24.0, bottom: 32),
                  child: Card(
                      elevation: 5,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              decoration: const BoxDecoration(
                                  color: ArgonColors.white,
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 0.5,
                                          color: ArgonColors.muted))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Center(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text("Register Your Product",
                                        style: TextStyle(
                                            color: ArgonColors.text,
                                            fontSize: 16.0)),
                                  )),

                                  // Divider()
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.63,
                              color: const Color.fromRGBO(244, 245, 247, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children:  [
                                          Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: TextField(
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Name:',
                                              ),
                                               controller:   txtproduct_f,
                                            ),
                                          ),
                                           Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: TextField(
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Amount',
                                              ),
                                              controller:   txtamount_f,
                                            ),
                                          ),
                                              ],
                                      ),
                                  Center( child:
                                    Column(
                                       // mainAxisAlignment: MainAxisAlignment.center,
                                        //crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          OutlinedButton.icon( // <-- OutlinedButton
                                            onPressed: () {
                                              pickImage();
                                            },
                                            icon: const Icon(
                                              Icons.camera_alt_outlined,
                                              size: 24.0,
                                            ),
                                            label: const Text('Upload Product Image'),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 100,
                                            child: image != null ? Image.file(image!): const Text("No image selected"),
                                          ),
                                        ],
                                      ),
                                  ),



                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Center(
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.deepOrangeAccent,
                                                shape: StadiumBorder()),
                                            onPressed: () async {
                                              setState(() {
                                                isLoading = true;
                                              });
                                              await Future.delayed(
                                                  const Duration(seconds: 5));
                                              setState(() {
                                                isLoading = true;
                                                // register();
                                                isLoading = false;
                                              });
                                            },
                                            child: (isLoading)
                                                ? const SizedBox(
                                                    width: 16,
                                                    height: 16,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Colors.white,
                                                      strokeWidth: 1.9,
                                                    ))
                                                : const Text('Register'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      )),
                ),
              ]),
            )
          ],
        ));
  }
}
