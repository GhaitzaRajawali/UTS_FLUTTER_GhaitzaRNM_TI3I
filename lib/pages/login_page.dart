import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uts_flutter/components/my_button.dart';
import 'package:uts_flutter/components/textfield.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text Editing Controller
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  //Sign User In
  void signUserIn() async {

    //Sign In
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: usernameController.text, 
      password: passwordController.text,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),

              //Logo
              const Icon(
                Icons.lock_clock,
                size: 100,
              ),
              const SizedBox(height: 50,),

              //Greeting
              Text(
                'Hello There!!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25,),

              //username Field
              MyTextField(
                controller: usernameController,
                hintText: 'EMAIL',
                obscureText: false),
              
              const SizedBox(height: 15,),
              //Pasword Field
              MyTextField(
                controller: passwordController,
                hintText: 'PASSWORD',
                obscureText: true),
              const SizedBox(height: 25,),  

              //Sign in Button
              MyButton(
                text: "Sign In",
                onTap: signUserIn,
              ),
              const SizedBox(height: 50,),

              //Register/Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not A Member?'),
                  const SizedBox(width: 4,),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Sign Up Now',
                      style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),

            ]
          ,),
        )
      ),
    );
  }
}