import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../header.dart';
import '../bottom_nav_bar.dart';
import 'shipper_detail_page.dart';

class ShipperListPage extends StatefulWidget {
  const ShipperListPage({Key? key}) : super(key: key);

  @override
  _ShipperListPageState createState() => _ShipperListPageState();
}

class _ShipperListPageState extends State<ShipperListPage> {
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
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                            color: Color(0xFFA2A2A2),
                            width: 3.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "   Nombre",
                                  hintStyle: TextStyle(
                                    color: Color(0xFFA2A2A2),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Icon(
                                Icons.search,
                                color: Color(0xFFA2A2A2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "FLETERO",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "ordenar por Último",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF212640),
              child: ListView(
                children: [
                  ShipperItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    correo: 'example@123.com',
                    telefono: '934521200',
                    wechat: '934521200',
                  ),
                  SizedBox(height: 20),
                  ShipperItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    correo: 'example@123.com',
                    telefono: '934521200',
                    wechat: '934521200',
                  ),
                  SizedBox(height: 20),
                  ShipperItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    correo: 'example@123.com',
                    telefono: '934521200',
                    wechat: '934521200',
                  ),
                  SizedBox(height: 20),
                  ShipperItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    correo: 'example@123.com',
                    telefono: '934521200',
                    wechat: '934521200',
                  ),
                  SizedBox(height: 20),
                  ShipperItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    correo: 'example@123.com',
                    telefono: '934521200',
                    wechat: '934521200',
                  ),
                  SizedBox(height: 20),
                  ShipperItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    correo: 'example@123.com',
                    telefono: '934521200',
                    wechat: '934521200',
                  ),
                  SizedBox(height: 20),
                  ShipperItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    correo: 'example@123.com',
                    telefono: '934521200',
                    wechat: '934521200',
                  ),
                  SizedBox(height: 20),
                  ShipperItem(
                    imagenPerfil: 'assets/perfil2.png',
                    cliente: 'Gepeto Rojas Rojas',
                    correo: 'example@123.com',
                    telefono: '934521200',
                    wechat: '934521200',
                  ),
                  SizedBox(height: 20),
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

class ShipperItem extends StatelessWidget {
  final String imagenPerfil;
  final String correo;
  final String cliente;
  final String telefono;
  final String wechat;

  const ShipperItem({
    required this.imagenPerfil,
    required this.correo,
    required this.cliente,
    required this.telefono,
    required this.wechat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ShipperDetailDialog(
              imagenPerfil: imagenPerfil,
              cliente: cliente,
              correo: correo,
              telefono: telefono,
              wechat: wechat,
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        padding: EdgeInsets.all(10.0),
        height: 80,
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
              width: 60,
              height: 60,
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagenPerfil),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
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
                    telefono,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'AnonymousPro',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
