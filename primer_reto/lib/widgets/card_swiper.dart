import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Swiper(
      itemCount: 4,
      itemWidth: double.infinity,
      itemHeight: double.infinity,
      pagination: const SwiperPagination(
        alignment: Alignment(-0.45, 0.5),
        //margin: EdgeInsets.all(80)
      ),
      itemBuilder: (_, int index) {
        return Column(
          children: const [
            _Slide('assets/images/coffeeseven.jpg')
          ],
        );
      },
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide(svg, {Key? key}) : super(key: key);
  final String svg = 'assets/images/coffeefour.jpg';
  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      placeholder: const AssetImage('assets/gif/coffee.gif'),
      image: AssetImage(svg),
    );
  }
}
