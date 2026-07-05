// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%203/widget/kcolor.dart';
// import 'package:login_page/Day%20-%203/widget/kstyle.dart';
// import 'package:login_page/Day%20-%203/widget/ktext.dart';
//
//
// class Ktextfield {
//   Ktextfield._();
//
//   static Widget build({
//     required TextEditingController controller,
//     required String hintText,
//     required IconData icon,
//     bool obscureText = false,
//     Widget? suffixIcon,
//     TextInputType keyboardType = TextInputType.text,
//   }) {
//     return TextField(
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//       style: Ktext.input,
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: Ktext.hint,
//         prefixIcon: Icon(
//           icon,
//           color: Kcolor.primary,
//         ),
//         suffixIcon: suffixIcon,
//         filled: true,
//         fillColor: Kcolor.fieldBackground,
//         enabledBorder: Kstyle.textFieldBorder.copyWith(
//           borderSide: const BorderSide(
//             color: Kcolor.fieldBorder,
//           ),
//         ),
//         focusedBorder: Kstyle.textFieldBorder.copyWith(
//           borderSide: const BorderSide(
//             color: Kcolor.primary,
//             width: 2,
//           ),
//         ),
//       ),
//     );
//   }
// }