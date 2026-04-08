//not Stateless nor Stateful, but a normal Class file for modularity for the quiz questions
//use this as template for the questions data
class Quizquestions {
  
  const Quizquestions(this.text, this.answers);
  
  final String text;
  final List<String> answers; //all possible answers

}