import 'package:flutter/material.dart';
import 'package:flutter_flashcards/data/q_n_a.dart';
import 'package:flutter_flashcards/models/q_n_a.dart';
// import 'package:flutter_flashcards/models/q_n_a.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height / 1.3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(
                        statements.length,
                        (index) => QuizCard(
                          statements: statements[index],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Center(
    //     child: Container(

    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           const SizedBox(height: 50),
    //           const Text(
    //             'Question [num]',
    //             style: TextStyle(
    //               fontSize: 30,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           const SizedBox(height: 80),
    //           Container(
    //             padding: const EdgeInsets.only(right: 15, left: 15),
    //             child: const Text(
    //               'What is Flutter and what\'s it good for?',
    //               style: TextStyle(
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 50),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

class QuizCard extends StatelessWidget {
  final QuestionAnswer statements;
  const QuizCard({required this.statements, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width / 1.3,
      // height: screenSize.height,
      margin: const EdgeInsets.all(45),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(25),
            child: Text(
              statements.question,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(25),
            child: Text(
              statements.answer,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
