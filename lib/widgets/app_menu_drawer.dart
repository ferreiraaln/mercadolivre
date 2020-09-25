import 'package:flutter/material.dart';
import 'package:mercadolivre/pages/home.dart';
import 'package:mercadolivre/pages/page02.dart';
import 'package:mercadolivre/pages/page03.dart';
import 'package:mercadolivre/pages/page04.dart';

class AppMenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 120.0,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 241, 89, 1),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    border: Border.all(
                      color: Colors.grey,
                      width: 4.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                    foregroundColor: Colors.grey,
                    child: Icon(Icons.people),
                  ),
                ),
                Padding(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Olá, Allan",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Admin"),
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                )
              ],
            ),
          ),
        ),
        _itemDrawer(context, Page02(), icon: Icon(Icons.home), text: "Home"),
        _itemDrawer(context, Page02(),
            icon: Icon(Icons.hotel), text: "Página 02"),
        Divider(
          color: Colors.grey,
        ),
        _itemDrawer(context, Page03(),
            icon: Icon(Icons.label_important), text: "Página 03"),
        _itemDrawer(
          context,
          Page04(),
          icon: Icon(Icons.location_searching),
          text: "Página 04",
          badge: "5",
        ),
        Divider(
          color: Colors.grey,
        ),
        _itemDrawer(context, Home(),
            icon: Icon(Icons.exit_to_app), text: "Sair"),
      ],
    );
  }

  Widget _itemDrawer(context, page,
      {Icon icon, String text, String badge = ''}) {
    return ListTile(
      leading: IconTheme(
          data: IconThemeData(
            color: Colors.black,
          ),
          child: icon),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      trailing: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: badge != ''
            ? Padding(
                child: Text(
                  badge,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0))
            : Text(''),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
