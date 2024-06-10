import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../header.dart';
import 'customer_list_page.dart';
import 'shipper_list_page.dart';
import 'supplier_list_page.dart';
import '../bottom_nav_bar.dart';

class EntitiesMenuPage extends StatefulWidget {
  const EntitiesMenuPage({super.key});

  @override
  _EntitiesMenuPageState createState() => _EntitiesMenuPageState();
}

class _EntitiesMenuPageState extends State<EntitiesMenuPage> {
  String _usuario = '';

  @override
  void initState() {
    super.initState();
    _cargarUsuario();
  }

  _cargarUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _usuario = prefs.getString('userkey') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Header(usuario: _usuario,),
          Container(
            color: Color(0xFF212640),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'SELECCIONE UNA OPCIÓN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontFamily: 'AnonymousPro',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF212640),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SupplierListPage()),
                              );
                            },
                            child: Container(
                              width: 150.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF504BAE),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/proveedor.png',
                                  height: 150.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'PROVEEDORES',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AnonymousPro',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShipperListPage()),
                              );
                            },
                            child: Container(
                              width: 150.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF504BAE),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/fletero.png',
                                  height: 150.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'FLETEROS',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AnonymousPro',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CustomerListPage()),
                          );
                        },
                        child: Container(
                          width: 150.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF504BAE),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/cliente.png',
                              height: 150.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'CLIENTES',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'AnonymousPro',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
