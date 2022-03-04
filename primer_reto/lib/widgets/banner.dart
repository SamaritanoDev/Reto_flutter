import 'package:flutter/material.dart';
import 'package:primer_reto/utils/responsive.dart';

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

class BannerTwo extends StatelessWidget {
  const BannerTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SizedBox(
      width: responsive.obtenerDiagonal(2),
      height: responsive.obtenerDiagonal(2),
      child: const Image(image: AssetImage('assets/bannertwo.png')),
    );
  }
}
