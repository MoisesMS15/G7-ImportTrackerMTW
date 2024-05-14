import 'package:flutter/material.dart';
import 'header.dart';

class Record_list_page extends StatelessWidget {
  const Record_list_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFB0B0B0),
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "    Código",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFB0B0B0),
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "   Nombres",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          Expanded(
            child: Container(
              color: Color(0xFF212640),
              child: ListView(
                children: [
                  SizedBox(height: 20),
                  RecordItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    fechaSolicitud: 'Mayo 04, 2024',
                    codigo: '12739210',
                    estado: 'Desaduanaje',
                  ),
                  SizedBox(height: 20),
                  RecordItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Moreno Guzman Rojas',
                    fechaSolicitud: 'Mayo 02, 2022',
                    codigo: '12739210',
                    estado: 'Recepción',
                  ),
                  SizedBox(height: 20),
                  RecordItem(
                    imagenPerfil: 'assets/perfil.png',
                    cliente: 'Crazy Rivas Escobar',
                    fechaSolicitud: 'Mayo 01, 2021',
                    codigo: '12739210',
                    estado: 'En tránsito',
                  ),
                  SizedBox(height: 20),
                  RecordItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    fechaSolicitud: 'Mayo 30, 2014',
                    codigo: '12739210',
                    estado: 'Desaduanaje',
                  ),
                  SizedBox(height: 20),
                  RecordItem(
                    imagenPerfil: 'assets/perfil.png',
                    cliente: 'Gepeto Rojas Rojas',
                    fechaSolicitud: 'Mayo 24, 2012',
                    codigo: '12739210',
                    estado: 'Recepción',
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecordItem extends StatelessWidget {
  final String imagenPerfil;
  final String cliente;
  final String fechaSolicitud;
  final String codigo;
  final String estado;

  const RecordItem({
    required this.imagenPerfil,
    required this.cliente,
    required this.fechaSolicitud,
    required this.codigo,
    required this.estado,
  });

  Color _getColorForState(String state) {
    switch (state) {
      case 'Desaduanaje':
        return Colors.red;
      case 'En tránsito':
        return Colors.yellow;
      case 'Recepción':
        return Colors.green;
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color colorEstado = _getColorForState(estado);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(10.0),
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xFF504BAE),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagenPerfil),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cliente,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'AnonymousPro',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  fechaSolicitud,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'AnonymousPro',
                    color: Colors.white,
                  ),
                ),
                Text(
                  codigo,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'AnonymousPro',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Text(
            estado,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: colorEstado,
            ),
          ),
        ],
      ),
    );
  }
}
