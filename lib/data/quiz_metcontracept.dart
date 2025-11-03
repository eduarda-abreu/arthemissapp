import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizMetContracept = QuizTopic(
  title: 'Métodos Contraceptivos',
  description: 'Como previnir a gravidez.',
  icon: Icons.event_available_outlined,
  questions: [
    Question(
      questionText: 'Qual método contraceptivo também protege contra ISTs?',
      answers: [
        'Pílula anticoncepcional',
        'DIU de cobre',
        'Preservativo (camisinha)',
        'Adesivo hormonal',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'O que é o DIU?',
      answers: [
        'Um comprimido tomado diariamente',
        'Um Dispositivo Intrauterino',
        'Uma injeção mensal',
        'Um tipo de exame de sangue',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A pílula anticoncepcional age...',
      answers: [
        'Matando os espermatozoides',
        'Principalmente impedindo a ovulação',
        'Criando uma barreira física no útero',
        'Apenas engrossando o muco cervical',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'A "pílula do dia seguinte" é um método contraceptivo de rotina?',
      answers: [
        'Sim, pode substituir a pílula normal',
        'Não, é um método de emergência',
        'Sim, mas só funciona se tomada pela manhã',
        'Não, é proibida no Brasil por ser abortiva',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual é um exemplo de método contraceptivo de barreira?',
      answers: ['Laqueadura', 'Pílula', 'Diafragma', 'Pílula do dia seguinte'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'A laqueadura é um método...',
      answers: [
        'Facilmente reversível',
        'Hormonal de curta duração',
        'Considerado permanente (esterilização)',
        'De emergência',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText:
          'O coito interrompido (retirar o pênis antes de ejacular) é um método seguro?',
      answers: [
        'Sim, 100% eficaz se feito corretamente',
        'Não, é um dos métodos menos eficazes',
        'Sim, se o homem tiver autocontrole',
        'Sim, desde que usado com tabelinha',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O DIU de cobre funciona...',
      answers: [
        'Liberando hormônios para impedir a ovulação',
        'Criando uma reação que impede a fecundação',
        'Apenas engrossando o muco cervical',
        'Parando a menstruação',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O implante contraceptivo (Implanon) é inserido...',
      answers: ['No útero', 'No braço', 'No ombro', 'Na coxa'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Métodos "comportamentais" (tabelinha, temperatura basal) são...',
      answers: [
        'Tão eficazes quanto a pílula',
        'Menos eficazes e exigem muito rigor',
        'Impossíveis de funcionar',
        'Proibidos pelos médicos',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
