import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final NetworkImage url;
  final String? title;
  final String? subtitle;
  final double? price;

  const CardCategory(this.url, this.title, this.subtitle, this.price, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/images/coffee-cup.png'),
            image: url,
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          )
        ],
      ),
    );
  }
}
