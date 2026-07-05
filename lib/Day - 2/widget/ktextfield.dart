// import 'package:flutter/material.dart';
//
// class Ktextfield {
//   Ktextfield._();
//
//   static Widget build({
//     required TextEditingController controller,
//     required String hintText,
//     required IconData prefixIcon,
//     IconData? suffixIcon,
//     VoidCallback? onSuffixTap,
//     bool obscureText = false,
//     TextInputType keyboardType = TextInputType.text,
//   }) {
//     return TextField(
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//       style: const TextStyle(
//         color: Colors.white,
//         fontSize: 16,
//       ),
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: const TextStyle(
//           color: Colors.white60,
//         ),
//         prefixIcon: Icon(
//           prefixIcon,
//           color: Colors.white70,
//         ),
//         suffixIcon: suffixIcon == null
//             ? null
//             : IconButton(
//           onPressed: onSuffixTap,
//           icon: Icon(
//             suffixIcon,
//             color: Colors.white70,
//           ),
//         ),
//         filled: true,
//         fillColor: Colors.white.withOpacity(0.08),
//         contentPadding: const EdgeInsets.symmetric(
//           horizontal: 20,
//           vertical: 18,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: BorderSide(
//             color: Colors.white.withOpacity(0.15),
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: const BorderSide(
//             color: Colors.blueAccent,
//             width: 2,
//           ),
//         ),
//       ),
//     );
//   }
// }