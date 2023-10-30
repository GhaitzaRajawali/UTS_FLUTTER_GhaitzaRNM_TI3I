import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uts_flutter/components/my_button.dart';
import 'package:uts_flutter/components/textfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Text Editing Controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //Sign User In
  void signUserUp() async {  
    //Creating Users
    if(passwordController.text == confirmPasswordController.text){
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: usernameController.text, 
      password: passwordController.text,
      );
    } else {
      //Error Message
      Text(
      'Wrong Password',
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 16,
        ),
      );
    }
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
                'Create An Account!!',
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

              //Confirm Pasword Field
              MyTextField(
                controller: confirmPasswordController,
                hintText: 'CONFIRM PASSWORD',
                obscureText: true),

              const SizedBox(height: 25,),  

              //Sign in Button
              MyButton(
                text: "Sign Up",
                onTap: signUserUp,
              ),
              const SizedBox(height: 50,),
              //Register/Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already Have A Account?'),
                  const SizedBox(width: 4,),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Log In Now',
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