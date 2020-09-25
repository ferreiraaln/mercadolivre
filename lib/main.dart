import 'package:flutter/material.dart';
import 'package:mercadolivre/pages/HomeMyApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mercado Livre",
      home: HomeMyApp(),
    );
  }
}
