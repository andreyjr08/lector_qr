import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:lector_qr/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.web_sharp), label: 'Web'),
        BottomNavigationBarItem(
            icon: Icon(Icons.history_sharp), label: 'Historial'),
      ],
    );
  }
}
