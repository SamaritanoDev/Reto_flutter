import 'package:flutter/material.dart';

import 'src/pages/card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Práctica',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyCard(),
    );
  }
}
