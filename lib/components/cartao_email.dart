import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/painel_email.dart';
import 'package:flutter_application_1/components/painel_telefone.dart';
import 'package:url_launcher/url_launcher.dart';

class CartaoEmail extends StatelessWidget {
  const CartaoEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text('Email:'),
        subtitle: const Text('matheusurbano2002@hotmail.com'),
        trailing: PainelEmail(funcaoEmail: chamarEmail),
      ),
    );
  }

  chamarEmail() {
    launchUrl(Uri(scheme: 'email', path: 'matheusurbano2002@hotmail.com'));
  }
}
