import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../utils/responsive.dart';

class CategoriesSlide extends StatelessWidget {
  const CategoriesSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return SizedBox(
      width: double.infinity,
      height: responsive.obtenerAltoLong(40),
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: ((context, index) => const _SlideCoffee(
                'Cappucino',
                'Café y leche',
                7.5,
              )),
        ),
      ),
    );
  }
}

class _SlideCoffee extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  const _SlideCoffee(this.name, this.description, this.price, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      width: responsive.obtenerDiagonal(20),
      height: responsive.obtenerDiagonal(70),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colorsecondary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Stack(
            children: const [
              ImageCoffee(),
            ],
          ),
          const _BottomCoffe(
            name: 'Cappucino',
            description: 'Café y leche',
            price: 7.0,
          ),
        ],
      ),
    );
  }
}

class _BottomCoffe extends StatelessWidget {
  const _BottomCoffe({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
  }) : super(key: key);

  final String name;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: responsive.obtenerAlto(3),
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: responsive.obtenerAlto(2),
                  color: colorBoton,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$price',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: responsive.obtenerAlto(3),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: colorprimary,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageCoffee extends StatelessWidget {
  const ImageCoffee({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      width: responsive.obtenerAnchoShort(50),
      height: responsive.obtenerAltoLong(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: const DecorationImage(
            image: NetworkImage(
              'assets/images/coffeesix.jpg',
              scale: 1,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
