import 'package:flutter/material.dart';
import 'package:primer_reto/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'banner',
      routes: {
        'banner' : (_)=> const SlideShowScreen(),
      },
    );
  }
}