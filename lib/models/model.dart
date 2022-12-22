class User {
  final String userName;
  final String passWord;

  const User({
    required this.userName,
    required this.passWord,
  });
}

final user = [
  const User(userName: 'Dinhtronglam', passWord: 'zsaqwe'),
  const User(userName: 'Dinhtronglam77', passWord: 'zsaqwezsaqwe'),
];

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
    text: 'Giữa External và Internal CSS, cách nào có độ ưu tiên cao hơn',
    options: [
      const Option(
          text: 'Viết sau (mới hơn) được ưu tiên hơn', isCorrect: false),
      const Option(text: 'Internal', isCorrect: false),
      const Option(text: 'External', isCorrect: true),
      const Option(
          text: 'Viết trước (cũ hơn) được ưu tiên hơn', isCorrect: false),
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
    text: '<h1 _____________="color: green;" >Hello</h1>',
    options: [
      const Option(text: 'css', isCorrect: false),
      const Option(text: 'link', isCorrect: false),
      const Option(text: 'inline', isCorrect: false),
      const Option(text: 'style', isCorrect: true),
    ],
  ),
  Question(
    text: 'Khi dùng External CSS, giá trị thuộc tính rel của thẻ <link> là gì?',
    options: [
      const Option(text: 'rel="css"', isCorrect: false),
      const Option(text: 'rel="style"', isCorrect: false),
      const Option(text: 'rel="stylesheet"', isCorrect: true),
      const Option(text: 'rel="stylesheets"', isCorrect: false),
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
    text: '<link _____________ href="favicon.ico">',
    options: [
      const Option(text: 'rel="favicon"', isCorrect: false),
      const Option(text: 'rel="icon"', isCorrect: true),
      const Option(text: 'icon="favicon"', isCorrect: false),
      const Option(text: 'icon="favicons"', isCorrect: false),
    ],
  ),
  Question(
    text: 'Có bao nhiêu cách sử dụng CSS',
    options: [
      const Option(text: '1', isCorrect: false),
      const Option(text: '2', isCorrect: false),
      const Option(text: '3', isCorrect: true),
      const Option(text: '4', isCorrect: false),
    ],
  ),
];
