import 'package:flutter/material.dart';

import 'package:primer_reto/models/slider_model.dart';
import 'package:provider/provider.dart';

import 'package:primer_reto/widgets/widgets.dart';

class SlideShowScreen extends StatelessWidget {
  const SlideShowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SliderModel(),
      child: Scaffold(
        body: Stack(
          children: const [
            BannerCoffe(),
            Slides(),
            Dots(),
            ButtonLarge('Empezar'),
          ],
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
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bannertwo.png'), fit: BoxFit.contain)),
    );
  }
}
