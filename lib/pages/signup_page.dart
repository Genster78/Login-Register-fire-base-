import 'package:flutter/material.dart';

import '../components/input_text_filed.dart';
import '../components/my_button.dart';
import '../components/squre_tile.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // text editing controller
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();

  void signUpUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
          
                // sign in
                const Text(
                  'Sign-Up',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          
                const SizedBox(height: 15),
          
                // divider
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                  indent: 25,
                  endIndent: 25,
                ),
          
                const SizedBox(height: 20),
          
                // input fields container
                Container(
                  height: 360,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 5),
                          spreadRadius: -1)
                    ],
                  ),
                  child: Column(
                    children: [
                      // user name text field
                      const TextInput(
                        hintText: 'Enter user name',
                        text: 'User Name :',
                        controller: null,
                        obscureText: false,
                      ),
          
                      const SizedBox(height: 12),
          
                      // number text field
                      TextInput(
                        hintText: 'Enter number',
                        text: 'Number :',
                        controller: emailController,
                        obscureText: false,
                      ),
          
                      const SizedBox(height: 12),
          
                      // password text field
                      TextInput(
                        hintText: 'Enter password',
                        text: 'Password :',
                        controller: passwordController,
                        obscureText: true,
                      ),
          
                      const SizedBox(height: 12),
          
                      // confirm password text field
                      TextInput(
                        hintText: 'Confirm password',
                        text: 'Confirm Passowrd :',
                        controller: confirmPasswordController,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
          
                const SizedBox(height: 30),
          
                // sign up button
                MyButton(
                  name: 'Sign-Up',
                  onTap: signUpUser,
                ),
          
                const SizedBox(height: 50),
          
                // or
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'or',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
          
                const SizedBox(height: 35),
                // google sign up button
                SqureTile(
                  imagePath: "lib/images/google.png",
                  onTap: () {},
                ),
          
                const SizedBox(height: 50),
          
                // not a member? register now..
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Not a member ?',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Sign-Up now',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff4B5043),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
