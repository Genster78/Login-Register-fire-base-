// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String text;
  final String hintText;
  final dynamic controller;
  final bool obscureText;
  const TextInput({
    Key? key,
    required this.text,
    required this.hintText,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // input field name
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),

        const SizedBox(height: 3),

        // input filed
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 10,
            ),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xFF4B5043).withOpacity(0.5),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5),
              gapPadding: 1,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFF4B5043),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500]),
          ),
        ),
      ],
    );
  }
}
