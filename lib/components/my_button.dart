// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final Function()? onTap;
  const MyButton({
    Key? key,
    required this.name,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        margin: const EdgeInsets.symmetric(horizontal: 25),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xFF4B5043),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
