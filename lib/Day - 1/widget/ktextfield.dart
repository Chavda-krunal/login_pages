// import 'package:flutter/material.dart';
// import 'package:login_page/Login/widget/kcolor.dart';
//
// class Ktextfield {
//   Ktextfield._();
//
//   static Widget buildTextField({
//     required String hintText,
//     required IconData icon,
//     bool isPassword = false,
//     TextEditingController? controller,
//   }) {
//     return TextField(
//       controller: controller,
//       obscureText: isPassword,
//       cursorColor: Kcolor.primary,
//       style: const TextStyle(
//         color: Kcolor.text,
//         fontSize: 16,
//         fontWeight: FontWeight.w500,
//       ),
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: const TextStyle(
//           color: Kcolor.hint,
//           fontSize: 15,
//         ),
//
//         prefixIcon: Icon(
//           icon,
//           color: Kcolor.primary,
//           size: 22,
//         ),
//
//         filled: true,
//         fillColor: Kcolor.field,
//
//         contentPadding: const EdgeInsets.symmetric(
//           horizontal: 18,
//           vertical: 18,
//         ),
//
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: BorderSide.none,
//         ),
//
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: BorderSide.none,
//         ),
//
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: const BorderSide(
//             color: Kcolor.primary,
//             width: 1.8,
//           ),
//         ),
//
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: const BorderSide(
//             color: Colors.red,
//             width: 1.5,
//           ),
//         ),
//
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: const BorderSide(
//             color: Colors.red,
//             width: 1.8,
//           ),
//         ),
//       ),
//     );
//   }
// }