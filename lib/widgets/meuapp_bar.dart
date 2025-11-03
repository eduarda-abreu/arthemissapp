import 'package:flutter/material.dart';

class MeuAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final bool mostrarAcoes;
  final bool mostrarLogo; // <<< 1. ADICIONAMOS A NOVA VARIÁVEL

  const MeuAppBar({
    super.key,
    required this.titulo,
    this.mostrarAcoes = true,
    this.mostrarLogo = false, // <<< 2. VALOR PADRÃO É 'false'
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF891D1A),
      elevation: 0,

      // 3. AQUI ESTÁ A LÓGICA PRINCIPAL
      title: mostrarLogo
          ? Row(
              // Se mostrarLogo for true, exibe o logo e o título
              children: <Widget>[
                Image.asset('lib/assets/images/logo.jpg', height: 40),
                const SizedBox(width: 8),
                Text(titulo),
              ],
            )
          : Text(titulo), // Senão, exibe apenas o título

      actions: mostrarAcoes
          ? <Widget>[
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.segment, color: Colors.white),
                    tooltip: 'Abrir menu',
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  );
                },
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
