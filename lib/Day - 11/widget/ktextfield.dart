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
//     return Container(
//       decoration: BoxDecoration(
//         color: Kcolor.fieldFill,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: const [
//           BoxShadow(
//             color: Kcolor.darkShadow,
//             offset: Offset(2, 2),
//             blurRadius: 4,
//           ),
//           BoxShadow(
//             color: Kcolor.lightShadow,
//             offset: Offset(-1, -1),
//             blurRadius: 3,
//           ),
//         ],
//       ),
//       child: TextField(
//         controller: controller,
//         keyboardType: keyboardType,
//         obscureText: obscureText,
//         style: Kstyle.textField,
//         cursorColor: Kcolor.cyanAccent,
//         decoration: InputDecoration(
//           hintText: hint,
//           hintStyle: Kstyle.hint,
//           prefixIcon: Icon(
//             prefixIcon,
//             color: Kcolor.icon,
//             size: 20,
//           ),
//           suffixIcon: suffixIcon,
//           filled: true,
//           fillColor: Colors.transparent,
//           contentPadding: const EdgeInsets.symmetric(
//             horizontal: 18,
//             vertical: 16,
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: BorderSide.none,
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: const BorderSide(
//               color: Kcolor.fieldBorder,
//               width: 1,
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: const BorderSide(
//               color: Kcolor.fieldFocusBorder,
//               width: 1.5,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }