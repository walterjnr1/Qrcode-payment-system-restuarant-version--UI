import 'package:flutter/material.dart';
import 'package:qr_code_payment_system/pages/add_product.dart';
import 'package:qr_code_payment_system/pages/dashboard.dart';
import 'package:qr_code_payment_system/pages/login.dart';
import 'package:qr_code_payment_system/pages/product_list.dart';
import 'package:qr_code_payment_system/pages/profile.dart';
import 'package:qr_code_payment_system/pages/qrcode_image.dart';
import 'package:qr_code_payment_system/pages/register.dart';
import 'package:qr_code_payment_system/pages/transactions.dart';
import 'package:qr_code_payment_system/pages/welcome.dart';
import 'package:qr_code_payment_system/widgets/add.dart';

void main() =>  runApp(  MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {

    '/': (context) =>   const RegisterUser(),
   },
));