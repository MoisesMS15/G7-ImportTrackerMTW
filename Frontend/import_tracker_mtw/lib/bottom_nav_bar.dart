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
        iconSize: 60.0,
        backgroundColor: Color(0xFFD9D9D9),
        selectedItemColor: Color(0xFF504BAE),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 1.0,
        unselectedFontSize: 1.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: '',
          ),
        ]
    );
  }
}