import 'package:flutter/material.dart';

import 'package:mercadolivre/widgets/AppSearchBar.dart';

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

class HomeMyApp extends StatefulWidget {
  @override
  _HomeMyAppState createState() => _HomeMyAppState();
}

class _HomeMyAppState extends State<HomeMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("Mercado Livre", style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: AppSearchBar());
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Home Mercado Livre'),
      ),
    );
  }
}
