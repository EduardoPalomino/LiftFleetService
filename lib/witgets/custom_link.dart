import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Customlink extends StatelessWidget {
  final String texto;
  final String url; // URL que el botón abrirá

  const Customlink({
    Key? key,
    required this.texto,
    required this.url,
  }) : super(key: key);

  void _launchURL(BuildContext context) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No se puede abrir el enlace: $url')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );
    return ElevatedButton(
      style: style,
      onPressed: () => _launchURL(context),
      child: Text(texto),
    );
  }
}

