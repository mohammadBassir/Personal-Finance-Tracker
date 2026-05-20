import 'package:flutter/material.dart';
import 'package:personalfinance/pages/Income.dart';
import 'package:personalfinance/pages/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Table{

  String money;
  double amount;

  Table({required this.amount, required this.money});
}
