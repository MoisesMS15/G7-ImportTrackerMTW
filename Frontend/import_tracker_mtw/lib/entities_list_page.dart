import 'package:flutter/material.dart';
import 'package:import_tracker_mtw/carrier_list_page.dart';
import 'package:import_tracker_mtw/customer_list_page.dart';
import 'package:import_tracker_mtw/supplier_list_page.dart';
import 'header.dart';

class Entities_list_page extends StatelessWidget {
  const Entities_list_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Header(),
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
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Supplier_list_page()),
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
                                MaterialPageRoute(builder: (context) => Carrier_list_page()),
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
                            MaterialPageRoute(builder: (context) => Customer_list_page()),
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
        ],
      ),
    );
  }
}