import 'package:flutter/services.dart' show rootBundle;
import 'dart:html' as html;

class SocialsButtonsActionController {
  downloadPdf() async {
    try {
      //indicamos de donde cargaremos  el pdf  y le asignamos el objto a la variable
      final bytes = await rootBundle.load('assets/pdf/rickdev.pdf');
      //aqui se crea el blob, si no sabe que es pues a investigar se ha dicho mi amigo o amiga
      //la cuestion es que aqui creamos el blob apartir de los bytes del pdf
      final blob = html.Blob([bytes.buffer.asUint8List()], 'application/pdf');
      //aqui se crea una url unica para la descarga de el pdf apartir de el blob creado antes
      final url = html.Url.createObjectUrlFromBlob(blob);
      //aqui se crea la etiqueta  </a> para simular el enlace de descarga
      final anchor = html.document.createElement('a') as html.AnchorElement;
      //esto aqui es bastante similar a html si se dan cuenta
      //aqui simplemente le pasamos a donde ira o en este caso de que url descargara el archivo
      anchor.href = url;
      //aqui le damos el nombre al archivo, este sera el que se muestre al descargarlo
      anchor.download = 'CV-Richard.pdf';
      //simulamos el click en la etiqueta <a>, bueno en este caso es un elemento
      //para que la descarga se inicie
      anchor.click();
      //una vez suceda aqui se liberan los recursos utilizados
      html.Url.revokeObjectUrl(url);
    } catch (e) {
      //manage exception
    }
  }
}
