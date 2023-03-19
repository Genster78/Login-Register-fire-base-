import 'package:flutter/material.dart';

import '../components/input_text_filed.dart';
import '../components/my_button.dart';
import '../components/squre_tile.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //text editing controller
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 30),

                // sign in
                const Text(
                  'Sign-In',
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
                      // email text field
                      TextInput(
                        hintText: 'Enter email',
                        text: 'Email :',
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

                      const SizedBox(height: 5),

                      //forgot password ?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // sign up button
                MyButton(
                  name: 'Sign-In',
                  onTap: signInUser,
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
