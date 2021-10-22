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
      children: <Widget>[
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2()
      ],
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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

  Widget _cardTipo2() {
    final urlImagen =
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(urlImagen),
            fadeInDuration: Duration(milliseconds: 200),
          ),
          // Image(image: NetworkImage(urlImagen)),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('mensaje de imagen'),
          ),
        ],
      ),
    );
  }
}
