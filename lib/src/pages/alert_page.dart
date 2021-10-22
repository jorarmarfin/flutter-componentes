import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
      ),
      floatingActionButton: _volver(context),
      body: Center(
        child: _unBoton(context),
      ),
    );
  }

  Widget _unBoton(BuildContext context) {
    return ElevatedButton(
      child: Text('Mostrar Alerta'),
      onPressed: () => _mostrarAlert(context),
      style:
          ElevatedButton.styleFrom(primary: Colors.red, shape: StadiumBorder()),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de mi alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: _botonesAlerta(context),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
                ),
          );
        },
        barrierDismissible: true);
  }

  List<Widget> _botonesAlerta(context) {
    return [
      TextButton(
          child: Text('Ok'), onPressed: () => Navigator.of(context).pop()),
      TextButton(
          child: Text('cancel'), onPressed: () => Navigator.of(context).pop()),
    ];
  }

  Widget _volver(context) {
    return FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}
