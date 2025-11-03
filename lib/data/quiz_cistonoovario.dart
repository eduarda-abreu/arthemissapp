import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart';

final QuizTopic quizCistonoovario = QuizTopic(
  title: 'Cisto no Ovário',
  description: 'Entendendo os cistos ovarianos.',
  icon: Icons.bubble_chart_outlined,
  questions: [
    Question(
      questionText: 'Cistos no ovário são sempre um sinal de câncer?',
      answers: [
        'Sim, todo cisto é câncer',
        'Não, a grande maioria dos cistos é benigna (funcional)',
        'Apenas se forem grandes',
        'Não, cistos são apenas líquidos e somem',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual exame é mais usado para ver um cisto no ovário?',
      answers: [
        'Raio-X do peito',
        'Ultrassom pélvico',
        'Exame de urina',
        'Exame de sangue (Beta HCG)',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é um "cisto funcional"?',
      answers: [
        'Um cisto que precisa de cirurgia',
        'Um cisto relacionado ao ciclo menstrual (ovulação) que some sozinho',
        'Um cisto que causa infertilidade',
        'Um cisto que opera em conjunto com o útero',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual o principal sintoma de um cisto ovariano rompido?',
      answers: [
        'Dor pélvica súbita e intensa',
        'Tosse seca',
        'Manchas na pele',
        'Corrimento com cheiro forte',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'Ter cisto no ovário é o mesmo que ter SOP (Síndrome do Ovário Policístico)?',
      answers: [
        'Sim, são a mesma coisa',
        'Não, a SOP é um distúrbio hormonal; ter um cisto isolado é diferente',
        'Sim, e o tratamento é igual',
        'Não, SOP é mais grave que ter cistos',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Cistos ovarianos podem causar dor?',
      answers: [
        'Não, são sempre indolores',
        'Sim, especialmente se forem grandes, torcidos ou rompidos',
        'Apenas durante a menstruação',
        'Não, apenas causam enjoo',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é um "teratoma"?',
      answers: [
        'Um tipo de cisto que pode conter tecidos (cabelo, dentes)',
        'O hormônio da gravidez',
        'Um cisto que só dá em grávidas',
        'Um tipo de câncer maligno no ovário',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Qual o tratamento para a maioria dos cistos funcionais?',
      answers: [
        'Cirurgia imediata',
        'Quimioterapia',
        'Observação, pois eles costumam desaparecer sozinhos',
        'Antibióticos',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'Cistos no ovário podem afetar a menstruação?',
      answers: [
        'Sim, podem causar atrasos ou irregularidade',
        'Não, não têm relação com o ciclo',
        'Apenas se a mulher estiver grávida',
        'Apenas se o cisto for cancerígeno',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é "torção ovariana"?',
      answers: [
        'Uma emergência médica onde o ovário gira, cortando o fluxo de sangue',
        'Um tipo de exercício pélvico',
        'Um sintoma leve da menopausa',
        'Um cisto que se torce',
      ],
      correctAnswerIndex: 0,
    ),
  ],
);
