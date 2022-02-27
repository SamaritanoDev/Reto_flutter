import 'package:appfisrt/src/widgets/lef_column.dart';
import 'package:appfisrt/utils/responsive.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    double doubleinfinity = double.infinity;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 0, 128),
        height: responsive.height,
        width: doubleinfinity,
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                  width: responsive.width,
                  height: responsive.height,
                  alignment: Alignment.center,
                  child: const LeftColumn()),
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(responsive.obtenerDiagonal(4)),
                    width: responsive.width,
                    height: responsive.height,
                    alignment: Alignment.center,
                    child:
                        const Image(image: AssetImage("assets/pavlova.jpg")))),
          ],
        ),
      ),
    );
  }
}
