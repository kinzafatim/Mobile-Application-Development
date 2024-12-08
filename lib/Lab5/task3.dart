// import 'package:flutter/material.dart';


// void main() {
//  runApp(QuizApp());
// }


// class QuizApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Quiz App',
//      home: QuizHomeScreen(),
//    );
//  }
// }


// class QuizHomeScreen extends StatefulWidget {
//  @override
//  _QuizHomeScreenState createState() => _QuizHomeScreenState();
// }


// class _QuizHomeScreenState extends State<QuizHomeScreen> {
//  final List<Map<String, Object>> _questions = [
//    {
//      'question': 'What is the capital of Pakistan?',
//      'options': ['Rawalpindi', 'Karachi', 'Lahore', 'Hyderabad'],
//      'correctAnswer': 'Karachi',
//    },
//    {
//      'question': 'What does the slang term "lit" mean?',
//      'options': [
//        'On fire',
//        'Very bright',
//        'Exciting or excellent',
//        'Slightly warm'
//      ],
//      'correctAnswer': 'Exciting or excellent',
//    },
//    {
//      'question': 'Which animal is infamous for laughing?',
//      'options': ['Elephant', 'Hyena', 'Giraffe', 'Shark'],
//      'correctAnswer': 'Hyena',
//    },
//    {
//      'question': 'What is 2 + 2?',
//      'options': ['3', '4', '5', '6'],
//      'correctAnswer': '4',
//    },
//  ];


//  int _currentQuestionIndex = 0;
//  String _selectedAnswer = '';


//  void _selectAnswer(String answer) {
//    setState(() {
//      _selectedAnswer = answer;
//    });


//      showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        final String correctAnswer = _questions[_currentQuestionIndex]
//            ['correctAnswer'] as String;
//        return AlertDialog(
//          title: Text('Answer Result'),
//          content: Text(
//            'You selected: $answer\nCorrect answer: $correctAnswer',
//          ),
//          actions: <Widget>[
//            TextButton(
//              onPressed: () {
//                Navigator.of(context).pop(); // Close the dialog
//                _moveToNextQuestion();
//              },
//              child: Text('Next'),
//            ),
//          ],
//        );
//      },
//    );
//  }


//  void _moveToNextQuestion() {
//    setState(() {
//      if (_currentQuestionIndex < _questions.length - 1) {
//        _currentQuestionIndex++;
//        _selectedAnswer = '';
//      } else {
//        _showQuizCompleteDialog();
//      }
//    });
//  }
//  void _showQuizCompleteDialog() {
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          title: Text('Quiz Complete'),
//          content: Text('You have completed the quiz!'),
//          actions: <Widget>[
//            TextButton(
//              onPressed: () {
//                Navigator.of(context).pop();
//                _resetQuiz();
//              },
//              child: Text('Restart Quiz'),
//            ),
//          ],
//        );
//      },
//    );
//  }
//  void _resetQuiz() {
//    setState(() {
//      _currentQuestionIndex = 0;
//      _selectedAnswer = '';
//    });
//  }


//  @override
//  Widget build(BuildContext context) {
//    final size = MediaQuery.of(context).size;
//    final currentQuestion = _questions[_currentQuestionIndex];


//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Quiz App'),
//      ),
//      body: Padding(
//        padding: const EdgeInsets.all(16.0),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: [
//                     Text(
//              currentQuestion['question'] as String,
//              style: TextStyle(
//                fontSize: size.height * 0.03,
//                fontWeight: FontWeight.bold,
//              ),
//              textAlign: TextAlign.center,
//            ),
//            SizedBox(height: size.height * 0.03),
//                       ...(currentQuestion['options'] as List<String>).map((option) {
//              return Column(
//                children: [
//                  ElevatedButton(
//                    onPressed: () {
//                      _selectAnswer(option);
//                    },
//                    style: ElevatedButton.styleFrom(
//                      padding: EdgeInsets.symmetric(
//                        vertical: size.height * 0.02,
//                      ),
//                    ),
//                    child: Text(option),
//                  ),
//                  SizedBox(height: size.height * 0.02),
//                ],
//              );
//            }).toList(),
//          ],
//        ),
//      ),
//    );
//  }
