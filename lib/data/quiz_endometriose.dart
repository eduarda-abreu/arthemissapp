import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizEndometriose = QuizTopic(
  title: 'Endometriose',
  description: 'Uma condição crônica.',
  icon: Icons.sick_outlined,
  questions: [
    Question(
      questionText: 'O que é endometriose?',
      answers: [
        'O tecido do útero (endométrio) cresce fora dele',
        'Uma infecção bacteriana',
        'Um tipo de cisto no ovário',
        'Uma inflamação comum do útero',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Qual é o sintoma mais comum da endometriose?',
      answers: [
        'Dor de cabeça',
        'Tosse seca',
        'Cólica menstrual muito intensa e dor pélvica',
        'Aumento de pelos no rosto',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'A endometriose pode causar infertilidade?',
      answers: [
        'Sim, é uma das causas de dificuldade para engravidar',
        'Não, ela não afeta a fertilidade',
        'Apenas se a mulher tiver mais de 40 anos',
        'Apenas se a endometriose for no ovário',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Onde os focos de endometriose são mais comuns?',
      answers: [
        'Nos pulmões e cérebro',
        'Nos ovários, trompas e peritônio (membrana da pelve)',
        'Na pele e unhas',
        'No fígado e no baço',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Qual o exame de imagem padrão-ouro para mapear a endometriose profunda?',
      answers: [
        'Raio-X de tórax',
        'Exame de urina',
        'Ressonância Magnética da pelve',
        'Papanicolau',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'Endometriose tem cura?',
      answers: [
        'Sim, com antibióticos',
        'Não tem cura definitiva, mas tem tratamento para controlar os sintomas',
        'Sim, basta engravidar',
        'Sim, se descoberta no início (antes dos 30 anos)',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'A gravidade da dor na endometriose é sempre proporcional à quantidade de lesões?',
      answers: [
        'Sim, muita dor significa muitas lesões',
        'Não, mulheres com poucas lesões podem ter muita dor, e vice-versa',
        'Sim, é uma relação direta',
        'Não, a dor é sempre leve',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual é um sintoma intestinal comum da endometriose?',
      answers: [
        'Dor para evacuar, especialmente durante a menstruação',
        'Azia',
        'Fome excessiva',
        'Vômitos constantes',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O tratamento da endometriose pode envolver...',
      answers: [
        'Apenas chás caseiros',
        'Medicamentos (hormônios) e, em alguns casos, cirurgia',
        'Apenas repouso',
        'Apenas cirurgia (remoção do útero)',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é um "endometrioma"?',
      answers: [
        'O sintoma de dor de cabeça',
        'Um cisto de endometriose no ovário (com aspecto de chocolate)',
        'O médico especialista em endometriose',
        'O exame que detecta a endometriose',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
