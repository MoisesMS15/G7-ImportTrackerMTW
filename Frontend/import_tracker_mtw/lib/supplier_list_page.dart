import 'package:flutter/material.dart';

class Supplier_list_page extends StatelessWidget {
  const Supplier_list_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header
          Container(
            padding: EdgeInsets.all(20.0),
            color: Color(0xFFB0B0B0),
            child: Row(
              children: [
                Image.asset(
                  'assets/logo2.png',
                  width: 200.0,
                  height: 70.0,
                ),
                SizedBox(width: 5.0),
                Expanded(
                  child: Text(
                    '¡Bienvenido Marco!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          // Contenido Central
          Expanded(
            child: Container(
              color: Color(0xFFD9D9D9),
              child: Center(
                child: Text(
                  'Listado de proveedores',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}