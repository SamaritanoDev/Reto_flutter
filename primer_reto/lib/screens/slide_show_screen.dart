import 'package:flutter/material.dart';
import 'package:primer_reto/models/slider_model.dart';
import 'package:primer_reto/theme/theme.dart';
import 'package:provider/provider.dart';
//import 'package:primer_reto/widgets/card_swiper.dart';

class SlideShowScreen extends StatelessWidget {
  const SlideShowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: (_) => SliderModel(),
      child: Scaffold(
          body: Center(
              child: Column(
        children: const [Expanded(child: _Slides()), _Dots()],
      ))),
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          _Dot(0),
          _Dot(1),
          _Dot(2),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index = 0;

  const _Dot(
    index, {
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
          ? AppTheme.colorprimary : Colors.transparent, 
          shape: BoxShape.circle
      ),
    );
  }
}

class _Slides extends StatefulWidget {
  const _Slides({Key? key}) : super(key: key);

  @override
  State<_Slides> createState() => _SlidesState();
}

class _SlidesState extends State<_Slides> {
  final pageViewController = PageController();

  @override
  void initState() {
    pageViewController.addListener(() {
      //actualizar provider
      Provider.of<SliderModel>(context, listen: false).currentPage =
          pageViewController.page;
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
  final String svg = 'assets/images/bannerone.jpg';

  const _Slide(svg);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(0),
      child: FadeInImage(
          placeholder: const AssetImage('assets/gif/coffee.gif'),
          image: AssetImage(svg)),
    );
  }
}
