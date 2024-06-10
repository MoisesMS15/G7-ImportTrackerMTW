import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final String usuario;

  Header({required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0.0),
      color: Color(0xFF212640),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bienvenido',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'AnonymousPro',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '$usuario',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'AnonymousPro',
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '\u{1F464} Administrador',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'AnonymousPro',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5.0),
              Image.asset(
                'assets/perfil2.png',
                height: 80.0,
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Divider(
            color: Colors.white,
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}