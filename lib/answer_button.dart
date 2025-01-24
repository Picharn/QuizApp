import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  final String answer;

  //const AnswerButton(this.answerText, {super.key});
  const AnswersButton({
    super.key,
    required this.answer,
    required this.onTap,
  });

  //final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 58, 0, 97),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            child: Text(
              answer,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
