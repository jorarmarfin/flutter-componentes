import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs Texto')),
      body: _lista(),
    );
  }

  Widget _lista() {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[_crearInput(), Divider(), _crearPersona()],
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.characters,
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
      decoration: InputDecoration(
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Solo nombre',
          helperText: 'helper text',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
  }

  Widget _crearPersona() {
    return ListTile(title: Text('Nombre es : $_nombre'));
  }
}
