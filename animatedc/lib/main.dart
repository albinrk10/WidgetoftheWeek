import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  @override
  State<MiPagina> createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  @override
  Widget build(BuildContext context) {
    final rnd = new Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    final r2 = rnd.nextInt(255);
    final g2 = rnd.nextInt(255);
    final b2 = rnd.nextInt(255);

    final width = rnd.nextInt(300) + 50;
    final height = rnd.nextInt(300) + 50;
    final borderRadius = BorderRadius.circular(rnd.nextInt(200).toDouble());
    final border=Border.all(width: rnd.nextInt(20).toDouble()+2,color:Color.fromRGBO(r,g,b,1));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.accessibility_new),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 1200),
          curve: Curves.elasticInOut,
          width: width.toDouble(),
          height: height.toDouble(),
          decoration: BoxDecoration(
              color: Color.fromRGBO(r, g, b, 1), 
              borderRadius: borderRadius,
              border: border
              ),   
        ),
      ),
    );
  }
}
