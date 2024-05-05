import 'package:flutter/material.dart';
import 'record_list_page.dart';

class Client_list_page extends StatelessWidget {
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
                // Logo a la izquierda
                Image.asset(
                  'assets/logo2.png',
                  width: 200.0,
                  height: 70.0,
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Text(
                    '¡Bienvenido Marco!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
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
                  'Listado de clientes',
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
      // Menú de Navegación Inferior
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF565555),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.file_open, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: '',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Record_list_page()),
            );
          }
        },
      ),
    );
  }
}