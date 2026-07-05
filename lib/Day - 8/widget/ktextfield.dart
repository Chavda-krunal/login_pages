// import 'package:flutter/material.dart';
// import 'kcolor.dart';
// import 'kstyle.dart';
//
// class Ktextfield {
//   Ktextfield._();
//
//   static Widget build({
//     required TextEditingController controller,
//     required String hint,
//     required IconData prefixIcon,
//     Widget? suffixIcon,
//     bool obscureText = false,
//     TextInputType keyboardType = TextInputType.text,
//   }) {
//     return TextField(
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//       style: Kstyle.textField,
//       cursorColor: Kcolor.primary,
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: Kstyle.hint,
//         prefixIcon: Icon(
//           prefixIcon,
//           color: Kcolor.icon,
//           size: 20,
//         ),
//         suffixIcon: suffixIcon,
//         filled: true,
//         fillColor: Kcolor.fieldFill,
//         contentPadding: const EdgeInsets.symmetric(
//           horizontal: 20,
//           vertical: 18,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: BorderSide.none,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: const BorderSide(
//             color: Kcolor.fieldBorder,
//             width: 1,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: const BorderSide(
//             color: Kcolor.fieldFocusBorder,
//             width: 1.8,
//           ),
//         ),
//       ),
//     );
//   }
// }