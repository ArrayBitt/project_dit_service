import 'package:flutter/material.dart';
import 'package:project_dit_service/states/loginpage.dart';
import 'package:project_dit_service/states/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleSrcreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Loginpage(ShowRegisterPage: toggleSrcreens);
    } else {
      return RegisterPage(showLoginPage: toggleSrcreens);
    }
  }
}
