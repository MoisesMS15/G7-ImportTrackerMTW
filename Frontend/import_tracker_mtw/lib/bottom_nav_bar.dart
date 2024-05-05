import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _BNavigatorState createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      iconSize: 30.0,
      backgroundColor: const Color(0xFF565555),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 15.0,
      unselectedFontSize: 12.0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.file_open),
            label: 'Expedientes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_sharp),
          label: 'Proveedores',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Clientes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_shipping),
          label: 'Fleteros',
        ),
      ]
    );
  }
}