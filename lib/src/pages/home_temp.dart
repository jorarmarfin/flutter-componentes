import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temp'),
      ),
      body: ListView(children: _listado()),
    );
  }

  List<Widget> _listado() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            leading: Icon(Icons.ac_unit_outlined),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
