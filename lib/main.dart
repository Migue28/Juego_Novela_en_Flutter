import 'package:flutter/material.dart';

import './historia.dart';
import './opciones.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Novelazao V2.1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String titulo = 'Default';
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Historia('Index 0'),
    Historia('Index 1'),
    Historia('Index 2')
  ];

  void cambiarTitulo() {
    setState(() {
      titulo = 'Nuevo titulo';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            titulo,
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Historia('Historia Default'),
            RaisedButton(
              child: Text('Nombre'),
              onPressed: cambiarTitulo,
            ),
            _widgetOptions.elementAt(_selectedIndex),
          ]),
        ),
        bottomNavigationBar: Container(
          child: Opciones(_selectedIndex),
          
        ),
      ),
    );
  }
}
