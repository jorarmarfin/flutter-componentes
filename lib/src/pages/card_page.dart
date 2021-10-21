import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Pages'),
      ),
      floatingActionButton: _volver(context),
      body: _lista(),
    );
  }

  Widget _volver(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add_location),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  Widget _lista() {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[_cardTipo1()],
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Titulo'),
            subtitle: Text('Subtitulo del card'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok'))
            ],
          )
        ],
      ),
    );
  }
}
