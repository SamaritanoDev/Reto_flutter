import 'package:flutter/material.dart';
import 'package:primer_reto/theme/theme.dart';
//import 'package:primer_reto/widgets/card_swiper.dart';

class SlideShowScreen extends StatelessWidget {
  const SlideShowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Expanded(
              child: _Slides()
              ),
            _Dots()
          ],
        )
        )
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
          _Dot(),
          _Dot(),
          _Dot(),
          _Dot(),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:12,
      height: 12,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        color: AppTheme.colorprimary,
        shape: BoxShape.circle
      ),
    );
  }
}

class _Slides extends StatelessWidget {
  const _Slides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
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
