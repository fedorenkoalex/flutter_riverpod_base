

import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget{
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final bool? obscureText;

  const AuthTextField({super.key, required this.controller, required this.label, required this.icon, this.obscureText = false})
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        prefixIcon: Icon(icon, color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white24),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.1),
      ),
    )
  }
}