import 'package:flutter/material.dart';

class BannerCoffe extends StatelessWidget {
  const BannerCoffe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bannerone.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
