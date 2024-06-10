import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'record_detail_page.dart';
import 'payments_detail_page.dart';
import '../header.dart';
import '../bottom_nav_bar.dart';

class RecordEntitiesPage extends StatefulWidget {
  const RecordEntitiesPage({Key? key}) : super(key: key);

  @override
  _RecordEntitiesPageState createState() => _RecordEntitiesPageState();
}

class _RecordEntitiesPageState extends State<RecordEntitiesPage> {
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
          Header(usuario: _usuario),
          Container(
            color: Color(0xFF212640),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DETALLE DE EXPEDIENTE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RecordDetailPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.book,
                            color: Color(0xFFA2A2A2),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PaymentDetailPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.monetization_on,
                            color: Color(0xFFA2A2A2),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RecordEntitiesPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF504BAE),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),


          Expanded(
            child: Container(
              color: Color(0xFF212640),
              child: Center(
                child: Container(
                  width: 350,
                  height: 370,
                  decoration: BoxDecoration(
                    color: Color(0xFF212640),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color(0xFF3B75CC),
                      width: 2.0,
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "CLIENTE",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'CLIENTE',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 8.0),
                                        Container(
                                          width: 130,
                                          height: 35,
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD9D9D9),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          child: Text(
                                            'José Quiroga',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'DNI/RUC',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 8.0),
                                        Container(
                                          width: 130,
                                          height: 35,
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD9D9D9),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          child: Text(
                                            '70764592',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'N° DE CONTACTO',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 8.0),
                                        Container(
                                          width: 130,
                                          height: 35,
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD9D9D9),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          child: Text(
                                            '+5192786423',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'CORREO ELECTRÓNICO',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 8.0),
                                        Container(
                                          width: 130,
                                          height: 35,
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD9D9D9),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          child: Text(
                                            'jose21@gmail.com',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'DIRECCIÓN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 8.0),
                              Container(
                                width: 300,
                                height: 35,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'MZ K3 LT 45 - Mi Perú Ventanilla',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                //
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFA2A2A2),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                //
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFA2A2A2),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                      ]
                  )
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
