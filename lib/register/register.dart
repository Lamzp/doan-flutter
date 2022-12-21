import 'package:doan_flutter/components/c_button.dart';
import 'package:doan_flutter/components/c_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final uNameController = TextEditingController();
  final passController = TextEditingController();
  final passRepeatController = TextEditingController();
  final phonesController = TextEditingController();
  final emailController = TextEditingController();

  void dangKi() {}

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
                'ĐĂNG KÍ',
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
              //! Email
              const SizedBox(height: 15),
              CTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false),
              //! Số điên thoại
              const SizedBox(height: 15),
              CTextField(
                  controller: phonesController,
                  hintText: 'Số điện thoại',
                  obscureText: false),
              //! Mật khẩu
              const SizedBox(height: 15),
              CTextField(
                  controller: passController,
                  hintText: 'Mật khẩu',
                  obscureText: false),
              //! Nhập lại mật khẩu
              const SizedBox(height: 15),
              CTextField(
                  controller: passRepeatController,
                  hintText: 'nhập lại Mật khẩu',
                  obscureText: true),
              const SizedBox(height: 25),
              CButton(
                onTap: dangKi,
                textRegister: 'ĐĂNG KÍ',
              )
            ],
          ),
        ),
      ),
    );
  }
}
