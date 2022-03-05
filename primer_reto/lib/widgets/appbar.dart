import 'package:flutter/material.dart';
import 'package:primer_reto/theme/theme.dart';

import '../utils/responsive.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Align(
      child: Container(
        padding: EdgeInsets.fromLTRB(
            responsive.obtenerAlto(6),
            responsive.obtenerAlto(6),
            responsive.obtenerAlto(6),
            responsive.obtenerAlto(3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage('assets/images/coffeesix.jpg'),
              backgroundColor: Colors.amber,
              maxRadius: responsive.obtenerDiagonal(3),
              minRadius: responsive.obtenerDiagonal(1),
            ),
            const _Ubication(),
            const Icon(Icons.notifications_active_outlined)
          ],
        ),
      ),
    );
  }
}

class _Ubication extends StatelessWidget {
  const _Ubication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_rounded,
            color: colorprimary,
          ),
          Text(
            'Perú,',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: responsive.obtenerAlto(2.5),
            ),
          ),
          Text(
            'Lima',
            style: TextStyle(
              fontSize: responsive.obtenerAlto(2.5),
            ),
          ),
        ],
      ),
    );
  }
}
