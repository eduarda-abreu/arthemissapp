// Arquivo: lib/quiz/quiz_data.dart
import 'package:flutter/material.dart'; // Necessário por causa do IconData

class Question {
  final String questionText;
  final List<String> answers;
  final int correctAnswerIndex;

  const Question({
    required this.questionText,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

class QuizTopic {
  final String title;
  final String description;
  final IconData icon;
  final List<Question> questions;

  const QuizTopic({
    required this.title,
    required this.description,
    required this.icon,
    required this.questions,
  });
}

// Lista de tópicos com 10 perguntas pra cada.
// ESTA VERSÃO FOI REVISADA E PADRONIZADA COM 4 OPÇÕES
final List<QuizTopic> mockTopics = [
  // Tópico 1: Menstruação
  QuizTopic(
    title: 'Menstruação',
    description: 'Tudo sobre o ciclo menstrual.',
    icon: Icons.water_drop_outlined,
    questions: [
      Question(
        questionText: 'O que é a menstruação?',
        answers: [
          'A liberação de um óvulo pelo ovário',
          'O sangramento mensal, parte do ciclo reprodutivo',
          'O início da gravidez',
          'O período mais fértil da mulher',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual é a duração média de um ciclo menstrual?',
        answers: ['14 dias', '28 dias', '35 dias', '40 dias'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que significa "TPM"?',
        answers: [
          'Tensão Pré-Menstrual',
          'Tempo Pós-Menopausa',
          'Teste Padrão Mensal',
          'Taxa Padrão de Menstruação',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Um ciclo menstrual é contado a partir de...',
        answers: [
          'O último dia de sangramento',
          'O primeiro dia de sangramento',
          'O dia da ovulação',
          'O primeiro dia de cólica',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a ovulação?',
        answers: [
          'O fim do ciclo menstrual',
          'O período de sangramento intenso',
          'A liberação de um óvulo pelo ovário',
          'A fase de cólica intensa',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'É possível engravidar durante a menstruação?',
        answers: [
          'Sim, embora menos provável',
          'Não, é impossível',
          'Somente se o ciclo for irregular',
          'Somente nos dois primeiros dias',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é um coletor menstrual?',
        answers: [
          'Um tipo de calcinha absorvente',
          'Um copinho de silicone inserido na vagina para coletar o fluxo',
          'Um medicamento para cólica',
          'Um tipo de absorvente interno',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Cólicas menstruais muito fortes são...',
        answers: [
          'Sempre normais, fazem parte',
          'Um sinal de alerta para procurar um médico',
          'Um sinal de gravidez',
          'Um sinal de fluxo intenso, apenas',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a menarca?',
        answers: [
          'A primeira menstruação',
          'A última menstruação (menopausa)',
          'O período fértil do mês',
          'O período entre duas menstruações',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A cor do sangue menstrual pode variar?',
        answers: [
          'Não, é sempre vermelho vivo',
          'Sim, de vermelho vivo a marrom escuro, e é normal',
          'Sim, mas apenas se houver uma infecção',
          'Não, é sempre marrom escuro',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 2: ISTs
  QuizTopic(
    title: 'ISTs',
    description: 'Sobre Infecções Sexualmente Transmissíveis.',
    icon: Icons.shield_outlined,
    questions: [
      Question(
        questionText: 'O que significa a sigla IST?',
        answers: [
          'Infecção Sexualmente Transmissível',
          'Insuficiência Sanguínea Total',
          'Interrupção Sistêmica Temporária',
          'Infecção Sanguínea Testicular',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Qual é a forma MAIS eficaz de prevenir a maioria das ISTs?',
        answers: [
          'Tomar pílula anticoncepcional',
          'Usar preservativo (camisinha)',
          'Lavar-se após a relação',
          'Fazer exames de sangue anuais',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual destas ISTs é causada por um vírus?',
        answers: ['Sífilis', 'Gonorreia', 'Herpes', 'Candidíase'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'A Clamídia e a Gonorreia podem causar infertilidade?',
        answers: [
          'Sim, se não tratadas corretamente',
          'Não, elas afetam apenas a pele',
          'Apenas em homens',
          'Não, nunca',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Qual IST é conhecida por ter várias fases (primária, secundária, terciária)?',
        answers: ['HPV', 'Sífilis', 'Candidíase', 'Herpes'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O HIV é o vírus que causa qual doença?',
        answers: ['Hepatite', 'Herpes', 'AIDS', 'Sífilis'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'É possível ter uma IST e não apresentar sintomas?',
        answers: [
          'Sim, muitas ISTs são assintomáticas',
          'Não, todas causam dor ou coceira imediatas',
          'Apenas por alguns dias',
          'Não, todas causam febre',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'O "sangue no teste" é a única forma de diagnosticar todas as ISTs?',
        answers: [
          'Sim, todas são vistas no exame de sangue',
          'Não, exames de urina, físicos e de secreção também são usados',
          'Sim, e precisa estar em jejum',
          'Não, apenas exames físicos são 100%',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual o principal sintoma do Herpes Genital?',
        answers: [
          'Febre alta e tosse',
          'Pequenas bolhas ou feridas dolorosas na região genital',
          'Manchas vermelhas no peito',
          'Corrimento com cheiro forte',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Existe vacina para alguma IST?',
        answers: [
          'Sim, para HPV e Hepatite B',
          'Não, para nenhuma',
          'Sim, apenas para HIV',
          'Sim, para todas as principais (HIV, Sífilis, HPV)',
        ],
        correctAnswerIndex: 0,
      ),
    ],
  ),
  // Tópico 3: Métodos Contraceptivos
  QuizTopic(
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
  ),
  // Tópico 4: Menopausa
  QuizTopic(
    title: 'Menopausa',
    description: 'A fase de transição hormonal.',
    icon: Icons.elderly_woman_outlined,
    questions: [
      Question(
        questionText: 'O que é a menopausa?',
        answers: [
          'A primeira menstruação',
          'A última menstruação, marcando o fim da fase reprodutiva',
          'Um período de alta fertilidade',
          'O período de cólicas intensas',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual é um sintoma muito comum da menopausa?',
        answers: [
          'Ondas de calor (fogachos)',
          'Aumento da altura',
          'Crescimento de novos dentes',
          'Perda de memória súbita',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A menopausa ocorre devido à...',
        answers: [
          'Diminuição dos hormônios (estrogênio e progesterona)',
          'Uma infecção viral',
          'Excesso de exercício físico',
          'Uso prolongado de pílula anticoncepcional',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é o climatério?',
        answers: [
          'O mesmo que menopausa',
          'A fase de transição que antecede e sucede a menopausa',
          'Um sinônimo de TPM',
          'A primeira menstruação',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual a idade média para a menopausa ocorrer?',
        answers: ['20-30 anos', '30-40 anos', '45-55 anos', '60-65 anos'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Terapia de Reposição Hormonal (TRH) é indicada para...',
        answers: [
          'Todas as mulheres, sem exceção',
          'Algumas mulheres, para aliviar sintomas intensos, com avaliação médica',
          'Apenas para prevenir gravidez após os 50',
          'Mulheres que querem engravidar após os 50',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A menopausa aumenta o risco de qual condição óssea?',
        answers: ['Osteoporose', 'Artrite', 'Escoliose', 'Diabetes'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é "menopausa precoce"?',
        answers: [
          'Menstruar pela primeira vez muito cedo',
          'A menopausa ocorrer antes dos 40 anos',
          'A menopausa ocorrer após os 60 anos',
          'Sintomas de menopausa muito intensos',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Lubrificantes íntimos são recomendados na menopausa para...',
        answers: [
          'Prevenir ISTs',
          'Combater o ressecamento vaginal',
          'Substituir a higiene diária',
          'Aumentar a fertilidade',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: '"Fogachos" é o nome popular dado para...',
        answers: [
          'Dores de cabeça intensas',
          'Ondas de calor súbitas',
          'Cãibras nas pernas durante a noite',
          'O sangramento fora de hora',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 5: Exames Ginecológicos
  QuizTopic(
    title: 'Exames Ginecológicos',
    description: 'A importância da prevenção.',
    icon: Icons.medical_services_outlined,
    questions: [
      Question(
        questionText: 'Qual exame previne o câncer de colo do útero?',
        answers: [
          'Exame de sangue',
          'Papanicolau (Preventivo)',
          'Ultrassom da tireoide',
          'Mamografia',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Com que frequência uma mulher adulta deve ir ao ginecologista?',
        answers: [
          'Apenas se sentir dor',
          'A cada 5 anos',
          'Geralmente, uma vez ao ano para check-up',
          'Apenas quando for engravidar',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'O que o Papanicolau detecta?',
        answers: [
          'Gravidez',
          'Nível de açúcar no sangue',
          'Alterações nas células do colo do útero',
          'Infecções urinárias',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Qual exame é usado para visualizar útero e ovários internamente?',
        answers: ['Raio-X', 'Ultrassom transvaginal', 'Exame de urina', 'Tomografia da cabeça'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Para fazer o Papanicolau, a mulher NÃO deve...',
        answers: [
          'Estar menstruada ou ter tido relações 48h antes',
          'Ter comido doces',
          'Ter bebido água',
          'Ter tomado banho',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A mamografia é um exame para rastrear o quê?',
        answers: ['Problemas no coração', 'Câncer de mama', 'Cistos no ovário', 'Nível de hormônios'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'A partir de qual idade, geralmente, se recomenda a mamografia de rotina?',
        answers: [
          '20 anos',
          '30 anos',
          '40 ou 50 anos, dependendo da orientação',
          'Logo após a primeira menstruação',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'O que é a colposcopia?',
        answers: [
          'Um exame que usa um tipo de microscópio para ver o colo do útero',
          'Uma cirurgia para retirar o útero',
          'Um exame de sangue para ISTs',
          'Um tipo de ultrassom da mama',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O autoexame das mamas substitui a mamografia?',
        answers: [
          'Sim, é mais eficaz',
          'Não, mas é importante para o autoconhecimento e detecção de nódulos',
          'Sim, se feito todo dia',
          'Não, apenas o médico pode fazer o autoexame',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Exames de sangue ginecológicos podem checar o quê?',
        answers: [
          'Apenas tipo sanguíneo',
          'Níveis hormonais, ISTs (como HIV e Sífilis) e anemia',
          'Apenas a saúde dos ossos',
          'Apenas a pressão arterial',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 6: HPV
  QuizTopic(
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
        answers: ['Exame de sangue', 'Papanicolau', 'Exame de urina', 'Ultrassom pélvico'],
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
        answers: ['Herpes', 'Condiloma acuminado', 'Sífilis primária', 'Vaginose'],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 7: Cisto no Ovário
  QuizTopic(
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
        answers: ['Raio-X do peito', 'Ultrassom pélvico', 'Exame de urina', 'Exame de sangue (Beta HCG)'],
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
  ),
  // Tópico 8: Endometriose
  QuizTopic(
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
  ),
  // Tópico 9: Síndrome do Ovário Policístico
  QuizTopic(
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
        answers: ['Resistência à insulina', 'Asma', 'Rinite alérgica', 'Câncer de pele'],
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
        answers: ['Acne persistente (espinhas)', 'Vitiligo', 'Psoríase', 'Manchas roxas na pele'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Mulheres com SOP têm maior risco de desenvolver...',
        answers: ['Diabetes tipo 2', 'Gripe', 'Pedra nos rins', 'Câncer de colo de útero'],
        correctAnswerIndex: 0,
      ),
    ],
  ),
  // Tópico 10: Puberdade
  QuizTopic(
    title: 'Puberdade',
    description: 'As mudanças no corpo.',
    icon: Icons.escalator_warning_outlined,
    questions: [
      Question(
        questionText: 'O que marca o início da puberdade feminina?',
        answers: [
          'O crescimento dos seios (telarca)',
          'O primeiro beijo',
          'A primeira nota boa na escola',
          'A primeira menstruação (menarca)',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A menarca é...',
        answers: [
          'A primeira menstruação',
          'O crescimento de pelos pubianos',
          'O aumento de peso',
          'O fim da puberdade',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Qual hormônio é o principal responsável pela puberdade feminina?',
        answers: ['Testosterona', 'Estrogênio', 'Cortisol', 'Ocitocina'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a "pubarca"?',
        answers: [
          'O surgimento de pelos pubianos',
          'A primeira menstruação',
          'O crescimento dos seios',
          'O odor corporal (axilas)',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'É normal a menstruação ser irregular nos primeiros anos após a menarca?',
        answers: [
          'Não, deve ser regular desde o início',
          'Sim, é muito comum levar um tempo para o ciclo regularizar',
          'Apenas se houver alguma doença',
          'Sim, mas apenas nos 3 primeiros meses',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A puberdade ocorre em que faixa etária, em média?',
        answers: [
          'Entre 5 e 7 anos',
          'Entre 8 e 13 anos',
          'Entre 15 e 18 anos',
          'Aos 18 anos',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é o "estirão do crescimento"?',
        answers: [
          'Um período de rápido aumento na altura',
          'O aumento dos seios',
          'O surgimento da acne',
          'O ganho de peso acelerado',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Além dos seios, o que mais muda no corpo feminino?',
        answers: [
          'Alargamento dos quadris e redistribuição de gordura',
          'Diminuição dos pés',
          'Mudança na cor dos olhos',
          'O cabelo ficar mais fino',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'O surgimento de acne (espinhas) na puberdade é causado por...',
        answers: [
          'Falta de higiene',
          'Alterações hormonais que aumentam a oleosidade da pele',
          'Comer chocolate',
          'Apenas por comer comida gordurosa',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A puberdade afeta apenas o corpo?',
        answers: [
          'Sim, só o físico',
          'Não, também envolve grandes mudanças emocionais e sociais',
          'Sim, e dura apenas 6 meses',
          'Não, afeta apenas o corpo e os hormônios',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 11: Conhecendo o corpo
  QuizTopic(
    title: 'Conhecendo o corpo',
    description: 'Anatomia e autoconhecimento.',
    icon: Icons.accessibility_new_outlined,
    questions: [
      Question(
        questionText: 'A vulva é...',
        answers: [
          'A parte interna (canal vaginal)',
          'A parte externa da genitália feminina (lábios, clitóris)',
          'O mesmo que o útero',
          'O canal por onde sai a urina',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Onde fica o clitóris?',
        answers: [
          'Dentro do útero',
          'Na parte superior da vulva, focado no prazer',
          'Próximo ao ânus',
          'No fundo da vagina',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a vagina?',
        answers: [
          'A parte externa que vemos',
          'O canal muscular que liga a vulva ao colo do útero',
          'O órgão que produz óvulos',
          'O órgão que produz hormônios',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Onde fica o colo do útero (cérvix)?',
        answers: [
          'Na parte de fora da vulva',
          'Na parte de cima do abdômen',
          'No fundo da vagina, sendo a "entrada" para o útero',
          'No meio do útero',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        // PERGUNTA CORRIGIDA PARA PRECISÃO ANATÔMICA
        questionText: 'Quais são as duas aberturas localizadas DENTRO da vulva?',
        answers: [
          'Vagina e Ânus',
          'Uretra e Clitóris',
          'Uretra e Vagina',
          'Clitóris e Vagina'
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Por onde sai a urina (xixi)?',
        answers: [
          'Pela vagina', 
          'Pela uretra', 
          'Pelo clitóris',
          'Pelo colo do útero',
          ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que são os ovários?',
        answers: [
          'Dois órgãos que armazenam e liberam os óvulos',
          'Os canais que levam o óvulo ao útero',
          'A parte de fora da vulva',
          'O local onde o bebê se desenvolve',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é o hímen?',
        answers: [
          'Uma membrana fina na entrada da vagina, presente em algumas mulheres',
          'O órgão responsável pelo prazer',
          'O local onde o bebê cresce',
          'Um músculo que fecha a vagina',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que são as trompas de Falópio?',
        answers: [
          'O mesmo que os ovários',
          'Os canais onde geralmente ocorre a fecundação (encontro do óvulo e espermatozoide)',
          'Os músculos da vagina',
          'Um sinônimo de útero',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Onde o bebê se desenvolve durante a gravidez?',
        answers: ['No ovário', 'Na vagina', 'No útero', 'Na trompa de Falópio'],
        correctAnswerIndex: 2,
      ),
    ],
  ),
  // Tópico 12: Cesárea vs Parto Normal
  QuizTopic(
    title: 'Cesárea vs Parto Normal',
    description: 'Tipos de parto.',
    icon: Icons.baby_changing_station_outlined,
    questions: [
      Question(
        questionText:
            'Qual tipo de parto geralmente tem uma recuperação mais rápida para a mãe?',
        answers: [
          'Parto Normal (vaginal)', 
          'Cesárea', 
          'Ambos são iguais',
          'Cesárea, pois não há esforço',
          ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A cesárea é...',
        answers: [
          'Sempre a melhor opção',
          'Uma cirurgia abdominal para o nascimento do bebê',
          'Um parto sem dor alguma',
          'Um parto normal com anestesia',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é o "trabalho de parto"?',
        answers: [
          'O processo de contrações que dilatam o colo do útero para o parto normal',
          'A cirurgia de cesárea',
          'Os exames feitos antes do parto',
          'A consulta final antes do parto',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Quando a cesárea é medicamente indicada?',
        answers: [
          'Quando a mãe prefere por medo da dor',
          'Quando há risco para a mãe ou bebê (ex: bebê atravessado, placenta prévia)',
          'Em todas as primeiras gestações',
          'Sempre que o bebê for muito grande',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Qual tipo de parto ajuda na liberação de ocitocina (hormônio do amor) naturalmente?',
        answers: [
          'Parto Normal', 
          'Cesárea agendada', 
          'Ambos',
          'Cesárea de emergência',
          ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é a anestesia "epidural"?',
        answers: [
          'Uma anestesia geral (dorme completo)',
          'Uma anestesia local (nas costas) para aliviar a dor do parto normal',
          'Um remédio para dor de cabeça',
          'Um tipo de massagem para dor',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A recuperação da cesárea envolve...',
        answers: [
          'Sair andando no mesmo dia sem dor',
          'Um corte cirúrgico (cicatriz) e cuidados pós-operatórios',
          'Apenas tomar vitaminas',
          'Não ter cicatriz',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é "parto humanizado"?',
        answers: [
          'Um parto feito em casa',
          'Um parto com foco no protagonismo da mulher e respeito às suas escolhas',
          'Um parto sem médico',
          'Um parto que usa fórceps',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'O bebê que nasce de parto normal pode ter benefícios para a imunidade?',
        answers: [
          'Sim, ao passar pelo canal vaginal, ele tem contato com bactérias "boas"',
          'Não, a imunidade é a mesma',
          'Não, é menos higiênico e perigoso',
          'Sim, pois ele nasce em ambiente 100% estéril',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é "episiotomia"?',
        answers: [
          'A anestesia do parto',
          'Um corte feito na região do períneo (entre vagina e ânus) durante o parto normal',
          'A primeira amamentação',
          'O nome dado à primeira contração',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 13: Amamentação
  QuizTopic(
    title: 'Amamentação',
    description: 'Benefícios e desafios.',
    icon: Icons.child_care_outlined,
    questions: [
      Question(
        questionText: 'O colostro é...',
        answers: [
          'O "primeiro leite" (amarelo), rico em anticorpos e nutrientes',
          'Um tipo de fórmula infantil',
          'Uma doença que impede amamentar',
          'O leite que sai após os 6 meses',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A OMS recomenda amamentação exclusiva até...',
        answers: ['Os 3 meses', 'Os 6 meses', 'O primeiro ano', 'O bebê ter dentes'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a "pega correta"?',
        answers: [
          'Quando o bebê abocanha apenas o bico do peito',
          'Quando o bebê abocanha a aréola (parte escura) e não só o bico',
          'Quando o bebê usa chupeta',
          'Quando o bebê morde o bico',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Leite materno previne o quê no bebê?',
        answers: [
          'Infecções, alergias e diarreia',
          'Fraturas ósseas',
          'Miopia',
          'Crescimento acelerado (altura)',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é "livre demanda" na amamentação?',
        answers: [
          'Amamentar de 3 em 3 horas certinho',
          'Amamentar sempre que o bebê mostrar sinais de fome',
          'Dar fórmula e peito',
          'Amamentar apenas 3 vezes ao dia',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A amamentação traz benefícios para a mãe?',
        answers: [
          'Não, apenas para o bebê',
          'Sim, ajuda o útero a voltar ao tamanho normal e reduz risco de câncer de mama',
          'Sim, mas apenas se for por mais de 2 anos',
          'Sim, mas apenas esteticamente (perda de peso)',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é "leite fraco"?',
        answers: [
          'Um problema comum em muitas mães',
          'Um mito; não existe leite fraco, o leite materno é sempre adequado',
          'Leite com pouca gordura',
          'Leite que precisa ser suplementado com fórmula',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que pode causar fissuras (rachaduras) no mamilo?',
        answers: [
          'O bebê sugar muito forte',
          'A "pega" incorreta do bebê',
          'O leite ser muito grosso',
          'O leite ser muito salgado',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a "apojadura"?',
        answers: [
          'A descida do leite (aumento do volume), dias após o parto',
          'O fim da amamentação',
          'O primeiro banho do bebê',
          'Quando o leite seca (empedra)',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Mãe que volta a trabalhar pode continuar amamentando?',
        answers: [
          'Não, ela deve parar (desmamar)',
          'Sim, ela pode ordenar (tirar) e armazenar o leite para o bebê',
          'Apenas se trabalhar em casa',
          'Apenas se o trabalho for de meio período',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 14: Corrimento Vaginal
  QuizTopic(
    title: 'Corrimento Vaginal',
    description: 'O que é normal ou não.',
    icon: Icons.opacity_outlined,
    questions: [
      Question(
        questionText: 'Todo corrimento vaginal é sinal de infecção?',
        answers: [
          'Sim, sempre',
          'Não, existe um corrimento fisiológico (normal) e transparente/branco',
          'Sim, e deve ser tratado com antibiótico',
          'Não, apenas se tiver cheiro',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual sinal no corrimento indica procurar um médico?',
        answers: [
          'Ser transparente e sem cheiro, tipo "clara de ovo"',
          'Cor amarelada/esverdeada, coceira ou cheiro forte',
          'Aumentar um pouco perto da ovulação',
          'Ser muito abundante (em grande volume)',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O corrimento "normal" (fisiológico) serve para...',
        answers: [
          'Limpar e lubrificar a vagina, protegendo contra infecções',
          'É um sinal de doença',
          'É um sinal de gravidez',
          'É um sinal de baixa imunidade',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que pode alterar o corrimento normal?',
        answers: [
          'Ciclo menstrual (ovulação), excitação, gravidez',
          'Apenas o tipo de comida',
          'Apenas o clima (frio ou calor)',
          'Apenas o uso de sabonete íntimo',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Corrimento com cheiro forte (como peixe podre) pode ser...',
        answers: ['Normal', 'Candidíase', 'Vaginose Bacteriana', 'HPV'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Corrimento branco, espesso (tipo leite coalhado) e com coceira, pode ser...',
        answers: ['Normal', 'Candidíase', 'Vaginose Bacteriana', 'Infecção urinária'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Corrimento amarelado-esverdeado e bolhoso pode ser...',
        answers: ['Normal', 'Tricomoníase (uma IST)', 'Ovulação', 'Menstruação'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Usar "duchas vaginais" (lavar por dentro) é recomendado?',
        answers: [
          'Sim, ajuda na limpeza',
          'Não, desequilibra a flora vaginal e pode causar infecções',
          'Sim, se for com sabonete neutro',
          'Sim, mas apenas uma vez por semana',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Usar calcinha de algodão e dormir sem calcinha pode...',
        answers: [
          'Piorar o corrimento',
          'Ajudar a prevenir infecções, pois permite a ventilação',
          'Não faz diferença',
          'Aumentar a chance de gravidez',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Corrimento marrom (borra de café) pode ser...',
        answers: [
          'Sinal de ovulação',
          'Início ou fim da menstruação (sangue antigo)',
          'Sinal de gripe',
          'Sinal de infecção por fungo',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 15: Candidíase e Vaginose
  QuizTopic(
    title: 'Candidíase e Vaginose',
    description: 'Infecções comuns.',
    icon: Icons.flare_outlined,
    questions: [
      Question(
        questionText: 'A Candidíase é causada por...',
        answers: ['Um vírus', 'Uma bactéria', 'Um fungo (Candida)', 'Um parasita'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Qual o sintoma clássico da Candidíase?',
        answers: [
          'Coceira intensa e corrimento branco (aspecto de leite coalhado)',
          'Febre alta',
          'Corrimento com cheiro de peixe',
          'Pequenas bolhas (feridas) dolorosas',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A Vaginose Bacteriana é marcada por...',
        answers: [
          'Ausência de corrimento',
          'Corrimento acinzentado com cheiro forte (peixe)',
          'Manchas vermelhas na pele',
          'Coceira intensa e dor',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A Vaginose Bacteriana é um desequilíbrio do quê?',
        answers: [
          'Das bactérias "boas" (lactobacilos) da vagina',
          'Dos hormônios da tireoide',
          'Dos níveis de açúcar no sangue',
          'Do pH do sangue',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A Candidíase é uma IST?',
        answers: [
          'Sim, sempre',
          'Não, é um desequilíbrio da flora (fungo que já existe ali), embora possa ser transmitida',
          'Sim, e não tem cura',
          'Apenas se o homem transmitir',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual fator pode piorar a Candidíase de repetição?',
        answers: [
          'Uso de antibióticos, estresse, baixa imunidade, diabetes',
          'Beber muita água',
          'Tomar sol',
          'Praticar muito exercício físico',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O tratamento da Candidíase geralmente é feito com...',
        answers: [
          'Antibiótico',
          'Antifúngico (pomada ou comprimido)',
          'Anti-inflamatório',
          'Vitamina C',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'O tratamento da Vaginose Bacteriana geralmente é feito com...',
        answers: ['Antibiótico', 'Antifúngico', 'Apenas repouso', 'Anti-inflamatório'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Candidíase causa cheiro forte?',
        answers: [
          'Sim, cheiro de peixe',
          'Geralmente não tem cheiro ou tem cheiro leve (de pão/fermento)',
          'Sim, cheiro de alho',
          'Sim, cheiro muito doce',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'É possível ter as duas (Candidíase e Vaginose) ao mesmo tempo?',
        answers: [
          'Não, uma impede a outra',
          'Sim, pode acontecer (infecção mista)',
          'Apenas em mulheres grávidas',
          'Não, a Vaginose é a evolução da Candidíase',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
];