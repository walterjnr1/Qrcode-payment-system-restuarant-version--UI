import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:qr_code_payment_system/UI_Model/Theme.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../model/user.dart';
import 'dart:io';


class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {

  bool isLoading = false;
  TextEditingController txtusername_f = TextEditingController();
  TextEditingController txtpassword_f = TextEditingController();
  TextEditingController txtrestaurant_f = TextEditingController();
  TextEditingController txtphone_f = TextEditingController();
  TextEditingController txtaddress_f = TextEditingController();

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
  Future register() async {
          var uri = "http://192.168.43.16/Qr_code_payment_system/API/register.php";
        var request = http.MultipartRequest('POST', Uri.parse(uri));

          //add text fields
          request.fields["txtusername"] = txtusername_f.text;
          request.fields["txtpassword"] = txtpassword_f.text;
          request.fields["txtrestaurant"] = txtrestaurant_f.text;
          request.fields["txtphone"] = txtphone_f.text;
          request.fields["txtaddress"] = txtaddress_f.text;
          //request.fields["text_field"] = text;

          if(image != null){
            var pic = await http.MultipartFile.fromPath("image", image!.path);

            request.files.add(pic);

            await request.send().then((result) {

              http.Response.fromStream(result).then((response) {

                var message = jsonDecode(response.body);
                // show snackbar if input data successfully
                final snackBar = SnackBar(content: Text(message['message']));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                //get new list images
               // getImageServer();
              });

            }).catchError((e) {

              print(e);

            });
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
              child: ListView(
                  children: [
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
                                            child: Text("User Registration",
                                                style: TextStyle(
                                                    color: ArgonColors.text,
                                                    fontSize: 16.0)),
                                          )),

                                      // Divider()
                                    ],
                                  )
                              ),

                              Container(
                                  height: MediaQuery.of(context).size.height * 0.63,
                                  color: const Color.fromRGBO(244, 245, 247, 1),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:SingleChildScrollView(
                                      child:Column(

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
                                                padding: const EdgeInsets.all(2.0),
                                                child: TextField(
                                                  decoration: const InputDecoration(
                                                    border: OutlineInputBorder(),
                                                    labelText: 'UserName:',
                                                  ),
                                                  controller:   txtusername_f,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: TextField(
                                                  decoration: const InputDecoration(
                                                    border: OutlineInputBorder(),
                                                    labelText: 'Password',
                                                  ),
                                                  controller:   txtpassword_f,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: TextField(
                                                  decoration: const InputDecoration(
                                                    border: OutlineInputBorder(),
                                                    labelText: 'Restaurant Name:',
                                                  ),
                                                  controller:   txtrestaurant_f,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: TextField(
                                                  decoration: const InputDecoration(
                                                    border: OutlineInputBorder(),
                                                    labelText: 'Phone',
                                                  ),
                                                  controller:   txtphone_f,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: TextField(
                                                  decoration: const InputDecoration(
                                                    border: OutlineInputBorder(),
                                                    labelText: 'Address',
                                                  ),
                                                  controller:   txtaddress_f,
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
                                                // width: double.infinity,
                                                height: 150,
                                                width: 150,

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
                                                    shape: const StadiumBorder()),
                                                onPressed: () async {
                                                  setState(() {
                                                    isLoading = true;
                                                  });
                                                  await Future.delayed(
                                                      const Duration(seconds: 5));
                                                  setState(() {
                                                    isLoading = true;
                                                    register();
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
                                  )
                              )
                            ],
                          )),
                    ),
                  ]),
            )
          ],
        )
    );
  }
}
