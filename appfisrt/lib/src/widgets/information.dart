import 'package:flutter/material.dart';

import '../../utils/responsive.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      padding: EdgeInsets.all(responsive.obtenerDiagonal(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen,
                  color: Colors.white, size: responsive.obtenerDiagonal(1.8)),
              const Text("PREP:"),
              const Text("25 min")
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer,
                  color: Colors.white, size: responsive.obtenerDiagonal(1.8)),
              const Text("COCI:"),
              const Text("1 h")
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant,
                  color: Colors.white, size: responsive.obtenerDiagonal(1.8)),
              const Text("PERS:"),
              const Text("4 -6")
            ],
          ),
        ],
      ),
    );
  }
}
