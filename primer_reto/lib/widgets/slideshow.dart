import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/slider_model.dart';
import '../theme/theme.dart';

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
        _Slide('assets/images/coffeone.jpg'),
        _Slide('assets/images/coffeetwo.jpg'),
        _Slide('assets/images/coffeethree.jpg'),
      ],
    );
  }
}

class _Slide extends StatelessWidget {
  final String url;

  const _Slide(this.url);

  @override
  Widget build(BuildContext context) {
    return Image(
        //fit: BoxFit.cover,
        image: AssetImage(url));
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
