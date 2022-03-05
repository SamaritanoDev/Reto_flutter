import 'package:flutter/material.dart';

import '../utils/responsive.dart';

class CategoriesSlide extends StatelessWidget {
  final String title;
  const CategoriesSlide(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return SizedBox(
      width: double.infinity,
      height: responsive.obtenerAlto(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(responsive.obtenerAlto(3))),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: responsive.obtenerAlto(2.5),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: ((context, index) => const _SlideCoffee()),
            ),
          ),
        ],
      ),
    );
  }
}

class _SlideCoffee extends StatelessWidget {
  const _SlideCoffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      width: responsive.obtenerDiagonal(18),
      height: responsive.obtenerDiagonal(25),
      //color: colorsecondary,
      margin: EdgeInsets.symmetric(
        horizontal: responsive.obtenerDiagonal(2.5),
        vertical: responsive.obtenerDiagonal(2.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: FadeInImage(
              width: responsive.obtenerDiagonal(18),
              height: 150,
              placeholder: const AssetImage('assets/gif/coffee.gif'),
              image: const NetworkImage('https://via.placeholder.com/200x200'),
              fit: BoxFit.cover,
            ),
          ),
          const Text('Titulo'),
          const Text('subtitulo'),
          const Text('precio'),
        ],
      ),
    );
  }
}
