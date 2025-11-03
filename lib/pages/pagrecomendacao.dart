import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/recomendacao_section.dart';

class PagRecomendacao extends StatefulWidget {
  const PagRecomendacao({super.key});

  @override
  State<PagRecomendacao> createState() => _PagRecomendacaoState();
}

class _PagRecomendacaoState extends State<PagRecomendacao> {
  // O filtro agora é baseado no nome da categoria
  String filtroSelecionado = 'todos'; // Valor inicial 'todos'
  final TextEditingController _pesquisaController = TextEditingController();

  @override
  void dispose() {
    _pesquisaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F5),
      // Título corrigido para refletir a página
      appBar: MeuAppBar(titulo: 'Recomendações', mostrarLogo: true),
      endDrawer: const MenuLateral(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Campo de pesquisa
            TextField(
              controller: _pesquisaController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Pesquisar...',
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
              // Atualiza o estado para forçar a reconstrução do grid
              onChanged: (value) => setState(() {}),
            ),
            const SizedBox(height: 12),

            // Filtros (Agora como botões de texto)
            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Categorias corrigidas para nomes
                  _buildFiltro('filmes', 'Filmes'),
                  _buildFiltro('livros', 'Livros'),
                  _buildFiltro('series', 'Séries'),
                  _buildFiltro('podcasts', 'Podcasts'),
                  _buildFiltro('todos', 'Todos'),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Grade de recomendações
            // AGORA PASSA O FILTRO E A PESQUISA PARA O WIDGET DO GRID
            RecomendacaoSection(
              filtro: filtroSelecionado,
              pesquisa: _pesquisaController.text,
            ),
          ],
        ),
      ),
    );
  }

  // --- Widget _buildFiltro ATUALIZADO ---
  // Agora ele cria um ElevatedButton e usa o nome da categoria
  Widget _buildFiltro(String categoria, String nome) {
    final bool selecionado = filtroSelecionado == categoria;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            filtroSelecionado = categoria;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: selecionado
              ? const Color(0xFF7A1E1E)
              : Colors.grey[200],
          foregroundColor: selecionado ? Colors.white : Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: selecionado ? 2 : 0,
        ),
        child: Text(nome),
      ),
    );
  }
}
