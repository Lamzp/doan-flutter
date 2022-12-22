import 'package:doan_flutter/models/model.dart';
import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> handleOnClickOption;
  OptionWidget({
    super.key,
    required this.question,
    required this.handleOnClickOption,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: question.options
            .map((option) => buildOption(context, option))
            .toList(),
      ),
    );

    // ignore: dead_code
  }

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () => handleOnClickOption(option),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: color),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            getIconForOption(option, question),
          ],
        ),
      ),
    );
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;

    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Icon(Icons.check_circle, color: Colors.green)
            : const Icon(Icons.cancel, color: Colors.red);
      } else if (option.isCorrect) {
        return const Icon(Icons.check_circle, color: Colors.green);
      }
    }
    return const SizedBox.shrink();
  }
}

Color getColorForOption(Option option, Question question) {
  final isSelected = option == question.selectedOption;
  if (question.isLocked) {
    if (isSelected) {
      return option.isCorrect ? Colors.green : Colors.red;
    } else if (option.isCorrect) {
      return Colors.green;
    }
  }
  return Colors.grey.shade300;
}
