import 'package:flutter/material.dart';
import 'package:novel_game/Opciones.dart';

import './Historia.dart';
import './Opciones.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Novela',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Novelaza',
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Historia(),
        ),
        bottomNavigationBar: Opciones(),
      ),
    );
  }
}
