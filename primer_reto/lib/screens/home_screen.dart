import 'package:flutter/material.dart';
import 'package:primer_reto/widgets/widgets.dart';

import '../utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppBarSearch(),
              Text(
                'Buen día, SamaritanoDev',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: responsive.obtenerAlto(2),
                ),
              ),
              SizedBox(
                height: responsive.obtenerAlto(3),
              ),
              const Search(),
              const CategoriesSlide('Categorias'),
            ],
          ),
        ),
      ),
    );
  }
}
