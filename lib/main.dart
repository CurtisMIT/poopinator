import 'package:flutter/material.dart';
import 'Components/Start.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Baby Names',
     home: Scaffold(
       body: Start(),
     ),
   );
 }
}