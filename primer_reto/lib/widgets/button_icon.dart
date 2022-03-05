import 'package:flutter/material.dart';
//import 'package:primer_reto/theme/theme.dart';

import '../utils/responsive.dart';

class ButtonIcon extends StatelessWidget {
  final String text;
  final Icon? icon;
  final Color? colorBoton;

  const ButtonIcon(
    this.text,
    this.icon,
    this.colorBoton,
    {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Align(
      alignment: const Alignment(0, 0.65),
      child: Container(
        width: responsive.obtenerAncho(70),
        height: responsive.obtenerAlto(8),
        decoration: BoxDecoration(
          color: colorBoton,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text('Empezar',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: responsive.obtenerDiagonal(2.0),
              )),
        ),
      ),
    );
  }
}
