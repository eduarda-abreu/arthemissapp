import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizOvariopoli = QuizTopic(
  title: 'Síndrome do Ovário Policístico',
  description: 'Conhecida como SOP.',
  icon: Icons.scatter_plot_outlined,
  questions: [
    Question(
      questionText: 'O que é a SOP (Síndrome do Ovário Policístico)?',
      answers: [
        'Uma infecção viral',
        'Um desequilíbrio hormonal',
        'Uma alergia a glúten',
        'Um tipo de cisto maligno',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual é um sintoma comum da SOP?',
      answers: [
        'Ciclos menstruais irregulares ou ausentes',
        'Dores nos pés',
        'Visão embaçada',
        'Sangramento menstrual muito intenso',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'A SOP está frequentemente associada a qual condição metabólica?',
      answers: [
        'Resistência à insulina',
        'Asma',
        'Rinite alérgica',
        'Câncer de pele',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é "hirsutismo", um sintoma da SOP?',
      answers: [
        'Queda de cabelo',
        'Aumento de pelos no rosto, peito e costas',
        'Pele seca',
        'Voz grossa',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Ter "ovários policísticos" no ultrassom é o mesmo que ter SOP?',
      answers: [
        'Sim, é o único critério',
        'Não, é apenas um dos critérios; precisa de outros sintomas (hormonais/clínicos)',
        'Sim, e sempre precisa de cirurgia',
        'Não, ter ovário policístico é mais raro que ter SOP',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual é a principal causa da SOP?',
      answers: [
        'É complexa, envolvendo fatores genéticos e hormonais',
        'Comer muito doce',
        'Não praticar exercício',
        'Uma IST',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O tratamento da SOP foca em...',
      answers: [
        'Apenas tomar pílula anticoncepcional',
        'Controlar os sintomas e melhorar o estilo de vida (dieta/exercício)',
        'Tomar antibióticos',
        'Retirada dos ovários',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A SOP pode dificultar a gravidez?',
      answers: [
        'Não, não afeta a fertilidade',
        'Sim, pois pode impedir a ovulação regular',
        'Sim, mas apenas em mulheres magras',
        'Apenas se a mulher estiver acima do peso',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual outro sintoma de pele é comum na SOP?',
      answers: [
        'Acne persistente (espinhas)',
        'Vitiligo',
        'Psoríase',
        'Manchas roxas na pele',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Mulheres com SOP têm maior risco de desenvolver...',
      answers: [
        'Diabetes tipo 2',
        'Gripe',
        'Pedra nos rins',
        'Câncer de colo de útero',
      ],
      correctAnswerIndex: 0,
    ),
  ],
);
