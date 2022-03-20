import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

//clase para obtener un contenido responsive
class Responsive {
  //para acceder a las propiedades
  late double _width, _height, _diagonal, _widths, _heightl;
  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;

  //funcion estatica que retorne una instancia de la clase Reponsive
  static Responsive of(BuildContext context) => Responsive(context);
  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    _width = size.width;
    _height = size.height;
    _widths = size.shortestSide;
    _heightl = size.longestSide;
    _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
  }

  //funcion para obtner un % del ancho
  double obtenerAncho(double percent) => _width * percent / 100;
  double obtenerAlto(double percent) => _height * percent / 100;
  double obtenerDiagonal(double percent) => _diagonal * percent / 100;
    double obtenerAnchoShort(double percent) => _widths * percent / 100;
  double obtenerAltoLong(double percent) => _heightl * percent / 100;
}
