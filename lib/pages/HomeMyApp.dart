import 'package:flutter/material.dart';
import 'package:mercadolivre/pages/cart.dart';

import 'package:mercadolivre/widgets/AppSearchBar.dart';
import 'package:mercadolivre/widgets/app_menu_drawer.dart';

import 'home.dart';

class HomeMyApp extends StatefulWidget {
  @override
  _HomeMyAppState createState() => _HomeMyAppState();
}

class _HomeMyAppState extends State<HomeMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AppMenuDrawer(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("Mercado Livre", style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: AppSearchBar());
            },
          ),
        ],
      ),
      body: Home(),
    );
  }
}
