import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:qr_reader/providers/db_provider.dart';

import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class MapaPage extends StatefulWidget {

  @override
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {

  MapType mapType = MapType.normal;

  @override
  Widget build(BuildContext context) {

    final scan = ModalRoute.of(context).settings.arguments;

print(scan);

    return Scaffold(
      appBar: AppBar(
        title: Text('WEB'),
      ),
      body: WebView(
   initialUrl: scan,
),
   );
  }
}