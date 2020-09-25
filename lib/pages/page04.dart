import 'package:flutter/material.dart';

class Page04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Página 04",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
      ),
      body: Center(
        child: Text("página 04"),
      ),
    );
  }
}
