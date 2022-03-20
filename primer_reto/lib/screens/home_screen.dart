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
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppBarSearch(),
                Text(
                  'Buen día, SamaritanoDev',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: responsive.obtenerAlto(3),
                  ),
                ),
                SizedBox(
                  height: responsive.obtenerAlto(3),
                ),
                const Search(),
                SizedBox(
                  height: responsive.obtenerAlto(3),
                ),
                Text(
                  'Categoria',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: responsive.obtenerAlto(3),
                  ),
                ),
                const CategoriesSlide(),
                SizedBox(
                  height: responsive.obtenerAlto(3),
                ),
                Text(
                  'Ofertas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: responsive.obtenerAlto(3),
                  ),
                ),
                const CategoriesSlide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
