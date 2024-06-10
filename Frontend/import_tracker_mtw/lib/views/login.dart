import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'register.dart';
import '../views/records/record_list_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameController = TextEditingController(text: "");

  _guardarUsuario() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString("userkey", _usernameController.text);
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RecordListPage()),
    );
  }

  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  final _passwordController = TextEditingController();

  String? _usernameError;
  String? _passwordError;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateAndLogin() {
    setState(() {
      _usernameError = _passwordError = null;
    });

    bool isValid = true;

    if (_usernameController.text.isEmpty) {
      _usernameError = 'Usuario no ingresado';
      isValid = false;
    }

    if (_passwordController.text.isEmpty) {
      _passwordError = 'Contraseña no ingresada';
      isValid = false;
    }

    if (isValid) {
      _guardarUsuario();
    }
  }

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
                child: Form(
                  key: _formKey,
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
                                ],
                              ),
                              child: TextFormField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15.0),
                                ),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            if (_usernameError != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  _usernameError!,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14.0,
                                  ),
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
                                  child: TextFormField(
                                    controller: _passwordController,
                                    obscureText: _obscureText,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.symmetric(horizontal: 15.0),
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
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color.fromRGBO(0, 0, 0, 0.52),
                                  ),
                                ),
                              ],
                            ),
                            if (_passwordError != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  _passwordError!,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width * 0.80,
                        decoration: BoxDecoration(
                          color: Color(0xFF504BAE),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        child: TextButton(
                          onPressed: _validateAndLogin,
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
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterPage()),
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
            ),
          ],
        ),
      ),
    );
  }
}
