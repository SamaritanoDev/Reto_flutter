import 'package:flutter/material.dart';
import 'package:primer_reto/utils/responsive.dart';
import 'package:provider/provider.dart';

import '../models/slider_model.dart';
import '../theme/theme.dart';
import '../utils/responsive.dart';

class Slides extends StatefulWidget {
  const Slides({Key? key}) : super(key: key);

  @override
  State<Slides> createState() => SlidesState();
}

class SlidesState extends State<Slides> {
  final pageViewController = PageController();

  @override
  void initState() {
    pageViewController.addListener(() {
      //actualizar provider
      context.read<SliderModel>().currentPage =
          pageViewController.page?.toInt() ?? 0;
    });
    super.initState();
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageViewController,
      children: const [
        _SlideText('Café tan bueno que a tus papilas gustativas les encantará',
            'El mejor grano, el asado más apto, el sabor más potente.'),
        _SlideText('Café tan bueno que a tus papilas gustativas les encantará',
            'El mejor grano, el asado más apto, el sabor más potente.'),
        _SlideText('Café tan bueno que a tus papilas gustativas les encantará',
            'El mejor grano, el asado más apto, el sabor más potente.'),
      ],
    );
  }
}

class _SlideText extends StatelessWidget {
  final String title;
  final String subtitle;

  const _SlideText(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: responsive.obtenerAlto(3),
                fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: responsive.obtenerAlto(2)),
          )
        ],
      ),
    );
  }
}

class Dots extends StatelessWidget {
  const Dots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _Dot(0),
            _Dot(1),
            _Dot(2),
          ],
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;

  const _Dot(
    this.index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageViewIndex = Provider.of<SliderModel>(context).currentPage;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 12,
      height: 12,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: (pageViewIndex >= index - 0.5 && pageViewIndex < index + 0.05)
              ? AppTheme.colorprimary
              : Colors.grey,
          shape: BoxShape.circle),
    );
  }
}
