import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'record_list_page.dart';
import 'main.dart';
import 'bottom_nav_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/logo2.png',
                  width: 275,
                  height: 275,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                decoration: BoxDecoration(
                  color: Color(0xFF212640),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63.0),
                    topRight: Radius.circular(63.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Bienvenido',
                        style: TextStyle(
                          fontFamily: 'AnonymousPro',
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Usuario',
                            style: TextStyle(
                              fontFamily: 'AnonymousPro',
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF4B4D5C),
                              borderRadius: BorderRadius.circular(23.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ]
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contraseña',
                            style: TextStyle(
                              fontFamily: 'AnonymousPro',
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4B4D5C),
                                  borderRadius: BorderRadius.circular(23.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: Icon(
                                  _obscureText ? Icons.visibility : Icons.visibility_off,
                                  color: Color.fromRGBO(0, 0, 0, 0.52),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width * 0.80,
                      decoration: BoxDecoration(
                        color: Color(0xFF504BAE),
                        borderRadius: BorderRadius.circular(23.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text(
                          'Iniciar sesión',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontFamily: 'AnonymousPro',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'AnonymousPro',
                          ),
                          children: [
                            TextSpan(
                              text: '¿No tienes una cuenta? ',
                            ),
                            WidgetSpan(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => RegisterPage()),
                                  );
                                },
                                child: Text(
                                  'Ingresa aquí',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}