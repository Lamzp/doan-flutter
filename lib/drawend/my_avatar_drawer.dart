import 'package:flutter/material.dart';

class MyAvatarDrawer extends StatefulWidget {
  @override
  _MyAvatarDrawerState createState() => _MyAvatarDrawerState();
}

class _MyAvatarDrawerState extends State<MyAvatarDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[200],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/Andy_Dufresne.webp'),
              ),
            ),
          ),
          const Text(
            "Trong Lam7",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Text(
            "dinhtronglam@gmail.com",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
