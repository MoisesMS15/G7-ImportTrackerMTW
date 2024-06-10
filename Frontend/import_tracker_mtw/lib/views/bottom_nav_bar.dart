import 'package:flutter/material.dart';
import 'entities/entities_menu_page.dart';
import 'records/record_list_page.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Color(0xFF504BAE),
              size: 50,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecordListPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Color(0xFF504BAE),
              size: 50,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EntitiesMenuPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}