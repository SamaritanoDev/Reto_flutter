import 'package:flutter/material.dart';
import 'package:primer_reto/theme/theme.dart';

import '../utils/responsive.dart';

class CardsCategory extends StatelessWidget {
  const CardsCategory({Key? key}) : super(key: key);

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
          itemBuilder: ((context, index) => const CardCategory(
                NetworkImage('assets/images/coffeesix.jpg', scale: 1),
                'Cappucino',
                'Café y leche',
                7.5,
              )),
        ),
      ),
    );
  }
}

class CardCategory extends StatelessWidget {
  final NetworkImage url;
  final String title;
  final String subtitle;
  final double price;

  const CardCategory(this.url, this.title, this.subtitle, this.price,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorsecondary,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/images/coffee-cup.png'),
            image: url,
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          Text(title),
          Text(subtitle),
          Text('$price')
        ],
      ),
    );
  }
}
