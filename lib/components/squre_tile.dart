// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SqureTile extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;
  const SqureTile({
    Key? key,
    required this.imagePath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xFF4B5043).withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xFF4B5043),
              width: 1.5,
            )),
        child: Image.asset(
          imagePath,
          height: 50,
        ),
      ),
    );
  }
}
