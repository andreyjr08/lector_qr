import 'package:flutter/material.dart';
import 'package:qr_reader/providers/db_provider.dart';

import 'package:url_launcher/url_launcher.dart';

launchURL(BuildContext context, ScanModel scan) async {
  final url = scan.valor;

  final prueba = scan.valor.substring(8);

  final separado = prueba.split('/');

  final separadoPunto = separado[0].split('.');



  if (separado[0] == 'wa.me') {
    var whatsappUrl = "whatsapp://send?text=$prueba";
    await canLaunch(whatsappUrl)
        ? launch(whatsappUrl)
        : print(
            "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
  } else if (separado[1] == 'maps' || separadoPunto[0] == 'youtu' || separadoPunto[1] == 'youtube')  {
    launch(url);
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: url);
  }
}
