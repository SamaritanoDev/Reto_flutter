import 'package:flutter/material.dart';
import 'package:primer_reto/theme/theme.dart';

import '../utils/responsive.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final Responsive responsive = Responsive.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _Buscador(
          'Buscar café...',
          Icons.search,
          colorBoton,
        ),
      ],
    );
  }
}

class _Buscador extends StatelessWidget {
  final String text;
  final IconData? icono;
  final Color? colorBoton;

  const _Buscador(this.text, this.icono, this.colorBoton, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Align(
      alignment: const Alignment(0, 0.65),
      child: Container(
        padding: EdgeInsets.all(responsive.obtenerDiagonal(2.5)),
        width: responsive.obtenerAlto(40),
        height: responsive.obtenerAlto(8),
        decoration: BoxDecoration(
          color: colorBoton,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Row(
          children: [
            Icon(
              icono,
              color: Colors.black38,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black38,
                fontSize: responsive.obtenerDiagonal(2),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
