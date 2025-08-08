import 'package:flutter/material.dart';
import 'package:flutter_application_arzoo/quiz/quiz_screen.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Qiuz App')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Rules', style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Expanded(
            child: Text(' RulesRulesRulesRulesRulesRulesRulesRulesRules'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Get.off(QuizScreen());
              },
              child: Text('Start'),
            ),
          ),
        ],
      ),
    );
  }
}
