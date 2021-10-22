import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final urlImagen =
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImagen),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('LM'),
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
      floatingActionButton: _volver(context),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(urlImagen),
          placeholder: AssetImage('assets/jar-loading.gif'),
        ),
      ),
    );
  }

  Widget _volver(context) {
    return FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}
