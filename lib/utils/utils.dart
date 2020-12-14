import 'package:flutter/material.dart';
import 'package:qr_reader/providers/db_provider.dart';

launchURL( BuildContext context, ScanModel scan  ) async {

  final url = scan.valor;


  final prueba = scan.valor.substring(8);

final separado = prueba.split('/');

final cadenaFinal =  separado[1];
  print(">>>>>>>" + cadenaFinal);



  if ( scan.tipo == 'http' ) {
    Navigator.pushNamed(context, 'mapa', arguments: url );
  }

}