import 'package:flutter/material.dart';
import 'header.dart';
import 'bottom_nav_bar.dart';

class Carrier_list_page extends StatelessWidget {
  const Carrier_list_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Header(),
          Expanded(
            child: Container(
              color: Color(0xFF212640),
              child: Center(
                child: Text(
                  'Listado de fleteros',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          BNavigator(
            currentIndex: (index) {

            },
          ),
        ],
      ),
    );
  }
}