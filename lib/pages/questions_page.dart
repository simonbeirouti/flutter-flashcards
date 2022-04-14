import 'package:flutter/material.dart';
import 'package:flutter_flashcards/models/q_n_a.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
        child: Container(
          width: screenSize.width / 1.1,
          height: 100,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(top: 25),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Something else about the question the question the question the question the question the question',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Need to bring this widget into the page widget above
// When attempting to do this, I got an error message on the main page that it needed a paramter
class QuestionCard extends StatelessWidget {
  final QuestionAnswer toAsk;
  const QuestionCard({required this.toAsk, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0, top: 5.0),
      // Container for the card with the basic styling
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 50.0,
              offset: const Offset(0.0, 25),
            ),
          ],
        ),
        padding: const EdgeInsets.all(15.0),
        width: MediaQuery.of(context).size.width,
        // Row for the name and amount
        child: Row(
          children: [
            Text(
              toAsk.question,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
