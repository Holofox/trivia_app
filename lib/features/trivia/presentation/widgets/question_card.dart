import 'package:flutter/material.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.question,
    this.onAnswered,
  }) : super(key: key);

  final Question question;
  final ValueChanged<bool> onAnswered;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      height: size.height * 0.8,
      child: Card(
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                question.category,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16.0,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    question.question,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () => onAnswered?.call(false),
                    child: const Icon(Icons.close),
                  ),
                  FloatingActionButton(
                    onPressed: () => onAnswered?.call(true),
                    child: const Icon(Icons.check),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
