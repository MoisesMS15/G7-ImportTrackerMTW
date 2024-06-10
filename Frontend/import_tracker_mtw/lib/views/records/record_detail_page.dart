import 'package:flutter/material.dart';
import 'package:import_tracker_mtw_v2/views/records/payments_detail_page.dart';
import 'package:import_tracker_mtw_v2/views/records/redord_entities_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../header.dart';
import '../bottom_nav_bar.dart';

class RecordDetailPage extends StatefulWidget {
  const RecordDetailPage({Key? key}) : super(key: key);

  @override
  _RecordDetailPageState createState() => _RecordDetailPageState();
}

class _RecordDetailPageState extends State<RecordDetailPage> {
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
          Header(
            usuario: _usuario,
          ),
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
                            color: Color(0xFF504BAE),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.book,
                            color: Colors.white,
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
                            color: Color(0xFFD9D9D9),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.person,
                            color: Color(0xFFA2A2A2),
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 5 / 2,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Cliente',
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
                              '18702135212',
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
                            'Proveedor',
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
                              '19247592105',
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
                            'Proforma proveedor',
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
                              '12821412',
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
                            'Factura proveedor',
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
                              '12821412',
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
                            'Fecha de salida',
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
                              '11/09/2022',
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
                            'Fecha de llegada',
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
                              '01/01/2023',
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
                            'Fletero',
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
                              '18702135212',
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
                            'Packing List',
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
                              '12821412',
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
                            'Número de BL',
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
                              '12821412',
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
                            'Tipo de contenedor',
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
                              '1X20-DD',
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
                            'Naviera',
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
                              'CMA',
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
                            'Agencia de Aduanas',
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
                              'TRASDA',
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
                            'DUA',
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
                              '12821412',
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
                            'Canal',
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
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              'ROJO',
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
                            'Salida de puerto/almacén',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
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
                              '11/09/2022',
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
                            'Factura MTW',
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
                              '12821412',
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
            ),
          ),

          BottomNavBar(),
        ],
      ),
    );
  }
}
