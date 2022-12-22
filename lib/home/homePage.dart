import 'package:doan_flutter/drawend/my_avatar_drawer.dart';
import 'package:doan_flutter/question/questionPage.dart';
import 'package:doan_flutter/user/userPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text('HTML CSS PRO'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              color: Colors.grey[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              color: Colors.deepPurple[200],
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[200],
                    padding: EdgeInsets.all(20.0),
                  ),
                  child: Text('Bắt đầu học'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuestionPage()));
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              color: Colors.deepPurple[200],
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[200],
                    padding: EdgeInsets.all(20.0),
                  ),
                  child: Text('Xếp hạng'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserPage()));
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              color: Colors.deepPurple[200],
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[200],
                    padding: EdgeInsets.all(20.0),
                  ),
                  child: Text('Trang cá nhân'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyAvatarDrawer()));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
