import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Payment.dart';
import 'Pages/HomePage.dart';
import 'Pages/Order.dart';
import 'Pages/edit_payment_method.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Order(),
    );
  }
}
