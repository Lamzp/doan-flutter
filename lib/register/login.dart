import 'package:doan_flutter/components/c_button.dart';
import 'package:doan_flutter/components/c_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final uNameController = TextEditingController();
  final passController = TextEditingController();

  void dangNhap() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              // heading 1
              Text(
                'HTML CSS PRO',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // desc
              Text(
                'Chào mừng bạn đến với HTML CSS PRO',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              // Đăng nhập
              Text(
                'ĐĂNG NHẬP',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              //! Tên tài khoản
              const SizedBox(height: 30),
              CTextField(
                  controller: uNameController,
                  hintText: 'Tên tài khoản',
                  obscureText: false),
              //! Mật khẩu
              const SizedBox(height: 15),
              CTextField(
                  controller: passController,
                  hintText: 'Mật khẩu',
                  obscureText: true),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Chưa có tài khoản đăng kí tại đây!',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              CButton(onTap: dangNhap)
            ],
          ),
        ),
      ),
    );
  }
}
