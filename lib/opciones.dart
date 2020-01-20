import 'package:flutter/material.dart';

class Opciones extends StatefulWidget {
  final int selectedIndex;
  Opciones(this.selectedIndex);

  @override
  _OpcionesState createState() => _OpcionesState(selectedIndex);
}

class _OpcionesState extends State<Opciones> {
  int selectedIndex = 0;
  _OpcionesState(this.selectedIndex);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Opcion 1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Opcion 2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Opcion 3'),
          ),
        ],
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        currentIndex: selectedIndex,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    
    print('Este es el index: $selectedIndex');
  }

}
