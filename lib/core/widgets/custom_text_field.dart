import 'package:flutter/material.dart';

import '../utils/conistant.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, required this.obscure, required this.hint, this.icon});
  final bool obscure;
  final String hint;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(
            icon,
            color: Colors.black,
            size: 28,
          ),
          filled: true,
          fillColor: thirdColor,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
