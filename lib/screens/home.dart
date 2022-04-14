import 'package:flutter/material.dart';
import 'package:flutter_flashcards/pages/questions_page.dart';
import 'package:flutter_flashcards/pages/quiz_page.dart';
import 'package:flutter_flashcards/pages/score_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomNavigationBarItem> bottomNavItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.quiz),
      label: 'Quiz',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.question_answer),
      label: 'Questions',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.leaderboard),
      label: 'Score',
    ),
  ];

  List<Widget> pages = const [
    QuizPage(),
    QuestionPage(),
    ScorePage(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcards'),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
