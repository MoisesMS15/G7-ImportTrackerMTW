import 'package:flutter/material.dart';
import 'record_list_page.dart';
import 'supplier_list_page.dart';
import 'customer_list_page.dart';
import 'carrier_list_page.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super (key:key);

  @override
  Widget build(BuildContext context){
    List<Widget> myList = [
      const Record_list_page(),
      const Supplier_list_page(),
      const Customer_list_page(),
      const Carrier_list_page()
    ];
    return myList[index];
  }
}