import 'package:flutter/material.dart';

import '../../utils/responsive.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.star,
                color: Colors.white, size: responsive.obtenerDiagonal(2.5)),
            const Text("PREP:"),
            const Text("25 min")
          ],
        ),
      ],
    );
  }
}
