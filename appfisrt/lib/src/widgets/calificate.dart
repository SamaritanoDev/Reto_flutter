import 'package:flutter/material.dart';

import '../../utils/responsive.dart';

class Calificate extends StatelessWidget {
  const Calificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 2,
          fit: FlexFit.loose,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star,
                  color: Colors.white, size: responsive.obtenerDiagonal(2.5)),
              Icon(Icons.star,
                  color: Colors.white, size: responsive.obtenerDiagonal(2.5)),
              Icon(Icons.star,
                  color: Colors.white, size: responsive.obtenerDiagonal(2.5)),
              Icon(Icons.star,
                  color: Colors.black, size: responsive.obtenerDiagonal(2.5)),
              Icon(Icons.star,
                  color: Colors.black, size: responsive.obtenerDiagonal(2.5)),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Text(
            '170 Reviews',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                letterSpacing: responsive.obtenerDiagonal(0.01),
                fontSize: responsive.obtenerDiagonal(2.5)),
          ),
        )
      ],
    );
  }
}
