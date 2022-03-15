import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class ValidarVersion extends StatelessWidget {
  const ValidarVersion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upgrader Example',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Upgrader Example'),
          ),
          body: UpgradeAlert(
            child: const Center(child: Text('Checking...')),
          )),
    );
  }
}
