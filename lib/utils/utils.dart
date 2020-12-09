import 'package:flutter/material.dart';
import 'package:qr_reader/providers/db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL( BuildContext context, ScanModel scan  ) async {

  final url = scan.valor;



  if ( scan.tipo == 'http' ) {
    Navigator.pushNamed(context, 'mapa', arguments: url );

  }

}