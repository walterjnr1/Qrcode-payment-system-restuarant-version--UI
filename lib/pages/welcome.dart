import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qr_code_payment_system/pages/dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dashboard.dart';
import 'dashboard2.dart';
class WelcomeScreen extends StatefulWidget {
  const   WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {

  Future<String> getUser() async{
    await Future.delayed(const Duration(seconds: 6));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userToken = prefs.getString('username') ?? ""; /// since you are using username
    debugPrint("login in as $userToken");
    return userToken;
  }
  logout() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('username');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body:FutureBuilder<String>(
          future: getUser(),
          builder:((context, snapshot) {
            if(snapshot.connectionState != ConnectionState.done){
              return splash();
            }else{
              if(snapshot.data==null || snapshot.data!.isEmpty){

                return Dashboard();
              }
              return  const Dashboard();
            }
          }),
        )
    );
  }

  Widget splash(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.deepOrangeAccent,
      alignment: Alignment.center,
      child: Container(

        width: 100,
        height: 100,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.cover)
        ),
      ),
    );

  }
}