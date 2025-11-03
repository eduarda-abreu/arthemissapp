import 'package:arthemisapp/widgets/infotexxttest.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:arthemisapp/widgets/test_section.dart';
import 'package:flutter/material.dart';

class DirTestesPag extends StatelessWidget {
  const DirTestesPag({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: MeuAppBar(titulo: 'Arthemiss', mostrarLogo: true),
      endDrawer: MenuLateral(), // Reutilizando a AppBar da tela anterior
      body: SingleChildScrollView(
        child: Column(children: [IntroTextBlockTest(), TestSection()]),
      ),
    );
  }
}
