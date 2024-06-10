import 'package:flutter/material.dart';
import 'package:import_tracker_mtw_v2/views/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'AnonymousPro'
      ),
      debugShowCheckedModeBanner: false,
      title: 'Import Tracker MTW',
      home: const LoginPage(),
    );
  }
}