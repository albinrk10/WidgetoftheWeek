import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expanded ',
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Expanded'),
        ),
        body: Row(
          children:<Widget>[
            Cuadrado(Colors.pink),
            Expanded(
              flex: 3,
              child: Cuadrado(Colors.green)
              ),
             Expanded(
              flex: 2,
              child: Cuadrado(Colors.green)
              ),
            Cuadrado(Colors.pink),
           
          ],
        )
      ),
    );
  }
}

class Cuadrado extends StatelessWidget {
  //const Cuadrado({super.key});

  final Color color;

  Cuadrado(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:20, horizontal:20),
      width: 50.0,
      height:50.0,
      decoration: BoxDecoration(
        color:this.color
      ),
    );
  }
}