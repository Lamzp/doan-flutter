import 'package:flutter/material.dart';

class MyAvatarDrawer extends StatefulWidget {
  @override
  _MyAvatarDrawerState createState() => _MyAvatarDrawerState();
}

class _MyAvatarDrawerState extends State<MyAvatarDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          SizedBox(
            height: 20.0,
          ),
          const Text(
            "dinhtronglam@gmail.com",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 35),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                  child: Text(
                'Thay đổi mật khẩu',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 35),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                  child: Text(
                'Thay tên đổi họ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
