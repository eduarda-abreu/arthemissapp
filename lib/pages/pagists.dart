import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:arthemisapp/widgets/secinfo_bullet.dart';
import 'package:flutter/material.dart';

class PagISTs extends StatelessWidget {
  const PagISTs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'ISTs', mostrarLogo: true),
      endDrawer: const MenuLateral(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Entendendo as ISTs (Infecções Sexualmente Transmissíveis)',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/IST-500x342.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'As Infecções Sexualmente Transmissíveis (ISTs) são causadas por vírus, bactérias ou outros microrganismos transmitidos, sobretudo, por relações sexuais sem proteção. Elas representam um risco significativo para a saúde reprodutiva das mulheres, podendo levar a complicações graves. Reconhecer os sintomas, os métodos de prevenção e a importância do diagnóstico precoce é essencial para preservar o bem-estar e a saúde íntima.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),
              const Text(
                '🦠O que são as ISTs?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              // 1.
              SecinfoBullet(
                label: '1. Obrigatoriamente de transmissão sexual:',
                text:
                    'Transmitidas quase que exclusivamente pelo contato sexual.',
              ),

              // 2.
              SecinfoBullet(
                label: '2. Frequentemente transmitida por contato sexual: ',
                text:
                    'Embora possam ser transmitidas sexualmente, o contágio pode ocorrer de outras formas.',
              ),

              // 3.
              SecinfoBullet(
                label: '3. Eventualmente transmitida por contato sexual: ',
                text:
                    'Não é a principal forma de transmissão, mas o contato sexual pode ser um dos meios.',
              ),

              const SizedBox(height: 20),

              Center(
                child: Text(
                  '🌸 Principais ISTs que Afetam as Mulheres:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //Gono
              const InfoBullet(
                label: 'Gonorreia: ',
                text: 'Corrimento e risco de infertilidade.',
              ),

              //candi
              const InfoBullet(
                label: 'Candidíase: ',
                text: 'Coceira e corrimento espesso.',
              ),

              //Tricomoníase
              const InfoBullet(
                label: 'Tricomoníase: ',
                text: 'Corrimento e odor forte.',
              ),

              //Herpes
              const InfoBullet(
                label: 'Herpes Genital: ',
                text: 'Bolhas doloridas, sem cura.',
              ),

              //Clamídia
              const InfoBullet(
                label: 'Clamídia: ',
                text: 'Muitas vezes sem sintomas, pode causar infertilidade',
              ),

              //Síflis
              const InfoBullet(
                label: 'Sífilis: ',
                text: 'Feridas genitais; precisa de tratamento.',
              ),

              //hpv
              const InfoBullet(
                label: 'HPV: ',
                text: 'Verrugas e risco de câncer do colo do útero.',
              ),

              //HIV
              const InfoBullet(
                label: 'HIV/AIDS: ',
                text: 'Enfraquece o sistema imunológico.',
              ),

              const SizedBox(height: 20),

              Center(
                child: Text(
                  '🩺 Prevenção e Cuidados:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              //camisinha
              const InfoBullet(
                label: ' Uso correto da camisinha: ',
                text:
                    'O preservativo é a forma mais segura de prevenir a transmissão de ISTs. Lembre-se de que é importante usá-lo do início ao fim de cada relação sexual.',
              ),

              //exames
              const InfoBullet(
                label: 'Realização de exames regulares:',
                text:
                    ' É fundamental que as mulheres façam exames ginecológicos periódicos, incluindo exames para detectar ISTs, mesmo que não apresentem sintomas.',
              ),

              //vacinação
              const InfoBullet(
                label: 'Vacinação: ',
                text:
                    'A vacina contra o HPV é uma forma eficaz de prevenir algumas infecções virais que podem levar ao câncer.',
              ),

              //diálogo
              const InfoBullet(
                label: ' Diálogo aberto com o parceiro:',
                text:
                    'A comunicação sobre o uso de métodos de prevenção é essencial para a saúde de ambos.',
              ),

              SizedBox(height: 10),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://clinicavittavalparaiso.com.br/upload/blog/JABVQhDnDlnCkDPKr3hkzK2strz9F9hmohjmCCJI.jpeg',
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              const Text(
                'A informação e o acompanhamento médico contínuo são cruciais para a detecção precoce e o tratamento adequado das ISTs. Quanto mais você souber sobre sua saúde e os riscos envolvidos, mais capacitada estará para tomar decisões que garantam o seu bem-estar.\n\n'
                'Prevenir as ISTs é um direito de todas as mulheres. Com o devido cuidado, conhecimento e proteção, é possível evitar complicações sérias para a saúde.  O controle sobre sua saúde reprodutiva é uma forma de empoderamento e de garantir uma vida sexual saudável e sem riscos.\n\n',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SecinfoBullet(
                label: 'Lembre-se',
                text: 'sua saúde, seu corpo, suas escolhas.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
