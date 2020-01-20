import 'package:flutter/material.dart';

class Historia extends StatefulWidget {
  final String historia;

  Historia(this.historia);

  @override
  _HistoriaState createState() => _HistoriaState(historia);
}

class _HistoriaState extends State<Historia> {
  String historia;

  _HistoriaState(this.historia);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(historia)
    );
  }
}