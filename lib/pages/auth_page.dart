import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uts_flutter/pages/home_page.dart';
import 'package:uts_flutter/pages/login_or_register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot){
          //User Log in
          if (snapshot.hasData){
            return HomePage();
          }
          //User not Log In
          else {
            return LoginOrRegisterPage();
          }
        }),
    );
  }
}