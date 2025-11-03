import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizHPV = QuizTopic(
  title: 'HPV',
  description: 'Sobre o Papilomavírus Humano.',
  icon: Icons.coronavirus_outlined,
  questions: [
    Question(
      questionText: 'O que o HPV pode causar?',
      answers: [
        'Apenas gripe',
        'Verrugas genitais e alguns tipos de câncer',
        'Cáries e aftas',
        'Endometriose',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Existe vacina contra o HPV?',
      answers: [
        'Não, apenas tratamento',
        'Sim, e é muito recomendada para adolescentes',
        'Sim, mas apenas para homens',
        'Não, a vacina foi proibida pela ANVISA',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual a principal forma de transmissão do HPV?',
      answers: [
        'Pelo ar',
        'Contato sexual (pele/mucosa)',
        'Picada de inseto',
        'Beber água contaminada',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O uso de preservativo (camisinha) previne 100% o HPV?',
      answers: [
        'Sim, totalmente',
        'Não, pois o vírus pode estar em áreas não cobertas, mas reduz muito o risco',
        'Camisinha não protege contra vírus',
        'Sim, se usada com lubrificante',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Qual exame detecta lesões no colo do útero causadas pelo HPV?',
      answers: [
        'Exame de sangue',
        'Papanicolau',
        'Exame de urina',
        'Ultrassom pélvico',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Todos os tipos de HPV causam câncer?',
      answers: [
        'Sim, todos são cancerígenos',
        'Não, existem tipos de baixo risco (causam verrugas) e alto risco (câncer)',
        'Sim, mas apenas em mulheres',
        'Não, HPV é o nome da verruga, não do vírus',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'É possível ter HPV e não ter sintomas?',
      answers: [
        'Sim, a maioria das infecções é assintomática',
        'Não, sempre causa verrugas visíveis',
        'Não, sempre causa febre',
        'Sim, mas apenas por 24 horas',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O HPV tem cura?',
      answers: [
        'Não, uma vez infectado, é para sempre',
        'Na maioria dos casos, o sistema imunológico elimina o vírus sozinho',
        'Sim, com antibióticos',
        'Sim, com um remédio específico tomado por 7 dias',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A vacina do HPV é indicada para quem?',
      answers: [
        'Apenas para mulheres adultas',
        'Apenas para quem já teve verrugas',
        'Principalmente para meninas e meninos antes do início da vida sexual',
        'Apenas para quem tem múltiplos parceiros',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'As verrugas genitais do HPV são chamadas de...',
      answers: [
        'Herpes',
        'Condiloma acuminado',
        'Sífilis primária',
        'Vaginose',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
