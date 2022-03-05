import 'package:flutter/material.dart';

class CardCoffe extends StatelessWidget {
  final NetworkImage url;
  final String? title;
  final String? subtitle;

  const CardCoffe(this.url, this.title, this.subtitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/gif/coffee.gif'),
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
