import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Qiuz App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Score'),
          Expanded(child: Text('Question')),
          ElevatedButton(onPressed: () {}, child: Text('option 1')),
          ElevatedButton(onPressed: () {}, child: Text('option 2')),
          ElevatedButton(onPressed: () {}, child: Text('option 3')),
          ElevatedButton(onPressed: () {}, child: Text('option 4')),
          ElevatedButton(onPressed: () {}, child: Text('Next')),
        ],
      ),
    );
  }
}
