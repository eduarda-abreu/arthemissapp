import 'package:arthemisapp/widgets/content_section.dart';
import 'package:arthemisapp/widgets/introtext.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: MeuAppBar(titulo: 'Arthemiss', mostrarLogo: true),
      endDrawer: MenuLateral(), // Reutilizando a AppBar da tela anterior
      body: SingleChildScrollView(
        child: Column(children: [IntroTextBlock(), ContentSection()]),
      ),
    );
  }
}
