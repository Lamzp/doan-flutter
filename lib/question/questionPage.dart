import 'dart:ui';

import 'package:doan_flutter/home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:doan_flutter/models/model.dart';
import 'package:doan_flutter/question/optionWidget.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Text(
            'Câu hỏi $_questionNumber/${questions.length}',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),
          const Divider(thickness: 1, color: Colors.grey),
          Expanded(
            child: PageView.builder(
              itemCount: questions.length,
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final _question = questions[index];
                return buildQuestion(_question);
              },
            ),
          ),
          _isLocked ? buildBtnNextPage() : const SizedBox.shrink(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  ElevatedButton buildBtnNextPage() {
    return ElevatedButton(
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInExpo,
          );
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(score: _score)));
        }
      },
      child: Text(_questionNumber < questions.length
          ? 'Câu hỏi tiếp theo'
          : 'Xem kết quả'),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        Text(question.text + '?',
            style: const TextStyle(
              color: Color.fromARGB(198, 0, 0, 0),
              fontSize: 16,
            )),
        const Text(
          'Chọn 1 đáp án',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        Expanded(
          child: OptionWidget(
            question: question,
            handleOnClickOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.isCorrect) {
                  _score++;
                }
              }
            },
          ),
        ),
      ],
    );
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);
  final int score;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 50),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/Andy_Dufresne.webp'),
        ),
      ),
      child: Column(
        children: [
          Text('Số điểm bạn đạt được: $score/${questions.length}',
              style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple[200],
              padding: EdgeInsets.all(20.0),
            ),
            child: Text('Quay lại trang chủ'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ],
        //child: Text('Ban duoc $score/${questions.length}'),
      ),
    );
  }
}
