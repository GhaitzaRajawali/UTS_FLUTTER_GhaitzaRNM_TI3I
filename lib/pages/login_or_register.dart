import 'package:flutter/material.dart';
import 'package:uts_flutter/pages/login_page.dart';
import 'package:uts_flutter/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //Show Login Page
  bool showLoginPage = true;

  //toggle between page
  void togglePages(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(
        onTap: togglePages,
        );
    }else{
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}