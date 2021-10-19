import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temp'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Titulo de lista'),
          ),
          Divider(),
          ListTile(
            title: Text('Titulo de lista'),
          )
        ],
      ),
    );
  }
}
