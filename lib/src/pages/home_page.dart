import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cagarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(data) {
    final List<dynamic> lista = data;
    final List<Widget> opciones = [];

    lista.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.access_alarm, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red),
        onTap: () {},
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }

  // List<Widget> _listaItemsSeteado() {
  //   return [
  //     ListTile(title: Text('uno')),
  //     Divider(),
  //     ListTile(title: Text('dos')),
  //     Divider(),
  //     ListTile(title: Text('tres')),
  //     Divider()
  //   ];
  // }
}
