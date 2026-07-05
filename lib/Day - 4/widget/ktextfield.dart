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
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: Kstyle.hint,
//         prefixIcon: Icon(
//           prefixIcon,
//           color: Kcolor.icon,
//         ),
//         suffixIcon: suffixIcon,
//         filled: true,
//         fillColor: Kcolor.fieldFill,
//         contentPadding: const EdgeInsets.symmetric(
//           horizontal: 18,
//           vertical: 18,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: BorderSide.none,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: BorderSide.none,
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: const BorderSide(
//             color: Colors.white54,
//             width: 1.5,
//           ),
//         ),
//       ),
//     );
//   }
// }