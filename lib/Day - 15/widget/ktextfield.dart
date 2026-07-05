import 'package:flutter/material.dart';
import 'kcolor.dart';
import 'kstyle.dart';

class Ktextfield {
  Ktextfield._();

  static Widget build({
    required TextEditingController controller,
    required String hint,
    required IconData prefixIcon,
    Widget? suffixIcon,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: Kstyle.textField,
      cursorColor: Kcolor.voltLime,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Kstyle.hint,
        prefixIcon: Icon(
          prefixIcon,
          color: Kcolor.icon,
          size: 20,
        ),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Kcolor.fieldFill,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Kcolor.fieldBorder,
            width: 1.2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Kcolor.fieldFocusBorder,
            width: 1.8,
          ),
        ),
      ),
    );
  }
}