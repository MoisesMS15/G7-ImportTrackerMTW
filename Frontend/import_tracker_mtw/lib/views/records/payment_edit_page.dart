import 'package:flutter/material.dart';
import '../header.dart';
import '../bottom_nav_bar.dart';

class Payment_edit_page extends StatelessWidget {
  const Payment_edit_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Header(usuario: 'test',),
          Expanded(
            child: Container(
              color: Color(0xFF212640),
              child: Center(
                child: Text(
                  'Edición de pagos',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}