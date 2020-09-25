import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Carrinho de compras",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
      ),
      body: Center(
        child: Text("Carrinho de compras"),
      ),
    );
  }
}
