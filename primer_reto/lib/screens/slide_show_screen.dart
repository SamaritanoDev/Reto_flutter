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
          children: [
            const BannerCoffe(),
            Container(
              margin: const EdgeInsets.all(20),
              child: const SlidesImage(),
            ),
            const Dots(),
            const ButtonLarge('Empezar'),
          ],
        ),
      ),
    );
  }
}
