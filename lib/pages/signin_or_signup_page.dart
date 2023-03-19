import 'package:flutter/material.dart';
import 'package:loing_register/pages/signin_page.dart';
import 'package:loing_register/pages/signup_page.dart';

class SignInOrSignUpPage extends StatefulWidget {
  const SignInOrSignUpPage({super.key});

  @override
  State<SignInOrSignUpPage> createState() => _SignInOrSignUpPageState();
}

class _SignInOrSignUpPageState extends State<SignInOrSignUpPage> {
  // initialize show signin page
  bool showSigninPage = true;

  // toggle between signin and signup page
  void togglePage() {
    setState(() {
      showSigninPage = !showSigninPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSigninPage) {
      return SignInPage(
        onTap: togglePage,
      );
    } else {
      return SignUpPage(
        onTap: togglePage,
      );
    }
  }
}
