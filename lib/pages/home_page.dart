import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:lector_qr/pages/direcciones_page.dart';

import 'package:lector_qr/providers/scan_list_provider.dart';
import 'package:lector_qr/providers/ui_provider.dart';

import 'package:lector_qr/widgets/custom_navigatorbar.dart';
import 'package:lector_qr/widgets/scan_button.dart';
import 'package:upgrader/upgrader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appcastURL =
        'https://raw.githubusercontent.com/larryaasen/upgrader/master/test/testappcast.xml';
    final cfg = AppcastConfiguration(url: appcastURL, supportedOS: ['android']);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(
              icon: const Icon(Icons.delete_forever),
              onPressed: () {
                Provider.of<ScanListProvider>(context, listen: false)
                    .borrarTodos();
              }),
          IconButton(
              icon: const Icon(Icons.update),
              onPressed: () {
                UpgradeAlert(
                  //appcastConfig: cfg,
                  child: const Center(child: Text('Checking...')),
                );
              })
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    // Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    // Usar el ScanListProvider
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 1:
        scanListProvider.cargarScans();
        return const DireccionesPage();

      default:
        return const DireccionesPage();
    }
  }
}
