import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home),
        ),
    ]);
  }
}
