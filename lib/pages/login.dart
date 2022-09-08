import 'package:qr_code_payment_system/UI_Model/Theme.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;
  TextEditingController txtusername_f = TextEditingController();
  TextEditingController txtpassword_f = TextEditingController();

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
            )
        ),
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
                                        child: Text("Login",
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
                                child: Center(
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
                                            padding: EdgeInsets.all(8.0),
                                            child: TextField(
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'UserName:',
                                              ),
                                               controller:   txtusername_f,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: TextField(
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Password',
                                              ),
                                               controller:   txtpassword_f,
                                            ),
                                          ),
                                        ],
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
                                                : const Text('Login'),
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
