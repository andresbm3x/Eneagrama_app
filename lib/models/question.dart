import 'package:eneagram_app/models/answer.dart';

class Question {
  int idQuestion;
  Answer firstAnswer;
  Answer secondAnswer;

  Question({this.idQuestion, this.firstAnswer, this.secondAnswer});

static List<Question> questionsList(){
    return <Question>[
    Question(
      idQuestion: 1,
      firstAnswer:
          Answer(id: 1, description: "Pregunta 11", idTipo: 1, selected: false),
      secondAnswer:
          Answer(id: 2, description: "Pregunta 12", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 2,
      firstAnswer:
          Answer(id: 3, description: "Pregunta 21", idTipo: 1, selected: false),
      secondAnswer:
          Answer(id: 4, description: "Pregunta 22", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 3,
      firstAnswer:
          Answer(id: 5, description: "Pregunta 31", idTipo: 1, selected: false),
      secondAnswer:
          Answer(id: 6, description: "Pregunta 33", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 4,
      firstAnswer:
          Answer(id: 7, description: "Pregunta 41", idTipo: 1, selected: false),
      secondAnswer:
          Answer(id: 8, description: "Pregunta 42", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 5,
      firstAnswer:
          Answer(id: 9, description: "Pregunta 51", idTipo: 1, selected: false),
      secondAnswer: Answer(
          id: 10, description: "Pregunta 52", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 6,
      firstAnswer: Answer(
          id: 11, description: "Pregunta 61", idTipo: 1, selected: false),
      secondAnswer: Answer(
          id: 12, description: "Pregunta 62", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 7,
      firstAnswer: Answer(
          id: 13, description: "Pregunta 71", idTipo: 1, selected: false),
      secondAnswer: Answer(
          id: 14, description: "Pregunta 72", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 8,
      firstAnswer: Answer(
          id: 15, description: "Pregunta 81", idTipo: 1, selected: false),
      secondAnswer: Answer(
          id: 16, description: "Pregunta 82", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 9,
      firstAnswer: Answer(
          id: 17, description: "Pregunta 91", idTipo: 1, selected: false),
      secondAnswer: Answer(
          id: 18, description: "Pregunta 92", idTipo: 1, selected: false),
    ),
    Question(
      idQuestion: 10,
      firstAnswer: Answer(
          id: 19, description: "Pregunta 101", idTipo: 1, selected: false),
      secondAnswer: Answer(
          id: 20, description: "Pregunta 102", idTipo: 1, selected: false),
    ),
  ];
}
}
