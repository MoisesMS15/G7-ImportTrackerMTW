import 'package:flutter/material.dart';
import 'package:import_tracker_mtw/bottom_nav_bar.dart';
import 'header.dart';
import 'bottom_nav_bar.dart';

class Supplier_list_page extends StatelessWidget {
  const Supplier_list_page({Key? key}) : super(key: key);

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
                  'Listado de proveedores',
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