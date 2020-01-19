import 'package:flutter/material.dart';

class Opciones extends StatefulWidget {
  @override
  _OpcionesState createState() => _OpcionesState();
}

class _OpcionesState extends State<Opciones> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Diana'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Es mi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Crush'),
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}