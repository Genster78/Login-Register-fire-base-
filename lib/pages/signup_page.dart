// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loing_register/services/auth_service.dart';
import '../components/input_text_filed.dart';
import '../components/my_button.dart';
import '../components/squre_tile.dart';

class SignUpPage extends StatefulWidget {
  final Function()? onTap;
  const SignUpPage({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // text editing controller
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();

// sign in user method
  void signUpUser() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      // check if password is confirmed
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } else {
        // show error message, paasword not match
        showErrorMessage('Password not match');
      }
      // pop the circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the circle
      Navigator.pop(context);

      // show error to user
      showErrorMessage(e.code);
    }
  }

  // wrong email message popup
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(message),
          actions: [
            CupertinoDialogAction(
              child: const Text('Ok'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

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
                  onTap: () => AuthService().signInWithGoogle(),
                ),

                const SizedBox(height: 50),

                // not a member? register now..
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already member ?',
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Sign-In now',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff4B5043),
                          fontWeight: FontWeight.bold,
                        ),
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
