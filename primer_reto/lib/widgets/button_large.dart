import 'package:flutter/material.dart';
import 'package:primer_reto/theme/theme.dart';

import '../utils/responsive.dart';

class ButtonLarge extends StatelessWidget {
  final String text;

  const ButtonLarge(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Align(
      alignment: const Alignment(0, 0.65),
      child: InkWell(
        onTap: (() => Navigator.pushNamed(context, 'home')),
        child: Container(
          width: responsive.obtenerAncho(70),
          height: responsive.obtenerAlto(8),
          decoration: BoxDecoration(
            color: colorprimary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(text,
                textAlign: textcenter,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: responsive.obtenerDiagonal(2.0),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
