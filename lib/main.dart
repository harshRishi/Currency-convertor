import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // this will going to run the app
}

/*
 Type of Widget 
  1. Stateless Widget - unmutable
  2. Stateful Widget
  3. Inheritated Widget0
*/

/*
 Design 
 1. Materail Design - google 
 2. Cupertino Design - apple
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// BuildContext tell the flutter app where the Widget lies in the widget tree
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MaterialHomePage(),
    );
  }
}
