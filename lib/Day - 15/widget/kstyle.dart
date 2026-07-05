import 'package:flutter/material.dart';
import 'kcolor.dart';

class Kstyle {
  Kstyle._();

  // Heading Style
  static const TextStyle heading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w900,
    color: Kcolor.textPrimary,
    letterSpacing: 1.5,
  );

  // Sub Heading
  static const TextStyle subHeading = TextStyle(
    fontSize: 13,
    color: Kcolor.textSecondary,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  // TextField Input
  static const TextStyle textField = TextStyle(
    fontSize: 15,
    color: Kcolor.textPrimary,
    fontWeight: FontWeight.w500,
  );

  // Hint Text
  static const TextStyle hint = TextStyle(
    fontSize: 14,
    color: Kcolor.textSecondary,
    fontWeight: FontWeight.w400,
  );

  // Button Text
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: Color(0xFF0B0E14),
    letterSpacing: 1.5,
  );

  // Forgot Password
  static const TextStyle forgot = TextStyle(
    fontSize: 13,
    color: Kcolor.voltLime,
    fontWeight: FontWeight.w700,
  );

  // Social Title
  static const TextStyle socialTitle = TextStyle(
    fontSize: 11,
    color: Kcolor.textSecondary,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.5,
  );

  // Footer Normal Text
  static const TextStyle normal = TextStyle(
    fontSize: 14,
    color: Kcolor.textSecondary,
  );

  // Footer Link
  static const TextStyle link = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w900,
    color: Kcolor.voltLime,
  );
}