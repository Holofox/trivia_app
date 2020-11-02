import 'package:flutter/material.dart';

class TriviaPage extends StatelessWidget {
  const TriviaPage({
    Key key,
    @required this.title,
  })  : assert(title != null),
        super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const SizedBox(),
    );
  }
}
