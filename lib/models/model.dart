class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(
    text: 'Vị trí đúng tiêu chuẩn để đặt thẻ meta charset',
    options: [
      const Option(text: 'Đầu tiên trong thẻ <body>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <head>', isCorrect: true),
      const Option(text: 'Nằm trong thẻ <title>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <link>', isCorrect: false),
    ],
  ),
  Question(
    text: 'Vị trí đúng tiêu chuẩn để đặt thẻ meta charset',
    options: [
      const Option(text: 'Đầu tiên trong thẻ <body>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <head>', isCorrect: true),
      const Option(text: 'Nằm trong thẻ <title>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <link>', isCorrect: false),
    ],
  ),
  Question(
    text: 'Vị trí đúng tiêu chuẩn để đặt thẻ meta charset',
    options: [
      const Option(text: 'Đầu tiên trong thẻ <body>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <head>', isCorrect: true),
      const Option(text: 'Nằm trong thẻ <title>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <link>', isCorrect: false),
    ],
  ),
  Question(
    text: 'Vị trí đúng tiêu chuẩn để đặt thẻ meta charset',
    options: [
      const Option(text: 'Đầu tiên trong thẻ <body>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <head>', isCorrect: true),
      const Option(text: 'Nằm trong thẻ <title>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <link>', isCorrect: false),
    ],
  ),
  Question(
    text: 'Vị trí đúng tiêu chuẩn để đặt thẻ meta charset',
    options: [
      const Option(text: 'Đầu tiên trong thẻ <body>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <head>', isCorrect: true),
      const Option(text: 'Nằm trong thẻ <title>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <link>', isCorrect: false),
    ],
  ),
  Question(
    text: 'Vị trí đúng tiêu chuẩn để đặt thẻ meta charset',
    options: [
      const Option(text: 'Đầu tiên trong thẻ <body>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <head>', isCorrect: true),
      const Option(text: 'Nằm trong thẻ <title>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <link>', isCorrect: false),
    ],
  ),
  Question(
    text: 'Vị trí đúng tiêu chuẩn để đặt thẻ meta charset',
    options: [
      const Option(text: 'Đầu tiên trong thẻ <body>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <head>', isCorrect: true),
      const Option(text: 'Nằm trong thẻ <title>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <link>', isCorrect: false),
    ],
  ),
  Question(
    text: 'Vị trí đúng tiêu chuẩn để đặt thẻ meta charset',
    options: [
      const Option(text: 'Đầu tiên trong thẻ <body>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <head>', isCorrect: true),
      const Option(text: 'Nằm trong thẻ <title>', isCorrect: false),
      const Option(text: 'Đầu tiên trong thẻ <link>', isCorrect: false),
    ],
  ),
];
