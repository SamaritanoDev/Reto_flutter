import 'package:appfisrt/src/widgets/calificate.dart';
import 'package:appfisrt/src/widgets/information.dart';
import 'package:appfisrt/utils/responsive.dart';
import 'package:flutter/material.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pancakes de fresa",
            style: TextStyle(
                fontSize: responsive.obtenerDiagonal(2.5),
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Ingrendientes tiene avena, huevo, leche, fresa, aceite. Luego, colocarlo en una sartén a bajo fuego y freír",
            style: TextStyle(fontSize: responsive.obtenerDiagonal(2.5)),
          ),
          const SizedBox(height: 10),
          const Calificate(),
          const Information(),
        ],
      ),
    );
  }
}
