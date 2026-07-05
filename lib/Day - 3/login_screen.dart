// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%203/widget/kcolor.dart';
// import 'package:login_page/Day%20-%203/widget/kstyle.dart';
// import 'package:login_page/Day%20-%203/widget/ktext.dart';
// import 'package:login_page/Day%20-%203/widget/ktextfield.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   bool hidePassword = true;
//
//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           gradient: Kstyle.backgroundGradient,
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: ConstrainedBox(
//               constraints: BoxConstraints(
//                 minHeight: size.height - MediaQuery.of(context).padding.top,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(
//                     Icons.lock_person_rounded,
//                     size: 90,
//                     color: Kcolor.primary,
//                   ),
//
//                   const SizedBox(height: 20),
//
//                   Text(
//                     "Welcome Back",
//                     style: Ktext.heading,
//                   ),
//
//                   const SizedBox(height: 8),
//
//                   Text(
//                     "Login to continue",
//                     style: Ktext.subtitle,
//                   ),
//
//                   const SizedBox(height: 40),
//
//                   Container(
//                     padding: const EdgeInsets.all(25),
//                     decoration: Kstyle.cardDecoration,
//                     child: Column(
//                       children: [
//                         Ktextfield.build(
//                           controller: emailController,
//                           hintText: "Email Address",
//                           icon: Icons.email_outlined,
//                           keyboardType: TextInputType.emailAddress,
//                         ),
//
//                         const SizedBox(height: 20),
//
//                         Ktextfield.build(
//                           controller: passwordController,
//                           hintText: "Password",
//                           icon: Icons.lock_outline,
//                           obscureText: hidePassword,
//                           suffixIcon: IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 hidePassword = !hidePassword;
//                               });
//                             },
//                             icon: Icon(
//                               hidePassword
//                                   ? Icons.visibility_off_outlined
//                                   : Icons.visibility_outlined,
//                               color: Kcolor.primary,
//                             ),
//                           ),
//                         ),
//
//                         const SizedBox(height: 12),
//
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: TextButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Forgot Password?",
//                               style: Ktext.link,
//                             ),
//                           ),
//                         ),
//
//                         const SizedBox(height: 10),
//
//                         SizedBox(
//                           width: double.infinity,
//                           height: 55,
//                           child: DecoratedBox(
//                             decoration: BoxDecoration(
//                               gradient: Kstyle.buttonGradient,
//                               borderRadius: Kstyle.buttonRadius,
//                             ),
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 elevation: 0,
//                                 backgroundColor: Colors.transparent,
//                                 shadowColor: Colors.transparent,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: Kstyle.buttonRadius,
//                                 ),
//                               ),
//                               onPressed: () {},
//                               child: Text(
//                                 "LOGIN",
//                                 style: Ktext.button,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   const SizedBox(height: 35),
//
//                   Row(
//                     children: [
//                       const Expanded(child: Divider()),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         child: Text(
//                           "OR",
//                           style: Ktext.body,
//                         ),
//                       ),
//                       const Expanded(child: Divider()),
//                     ],
//                   ),
//
//                   const SizedBox(height: 25),
//
//                   Row(
//                     children: [
//                       Expanded(
//                         child: OutlinedButton.icon(
//                           style: OutlinedButton.styleFrom(
//                             padding: const EdgeInsets.symmetric(vertical: 14),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                           onPressed: () {},
//                           icon: const Icon(Icons.g_mobiledata, size: 28),
//                           label: const Text("Google"),
//                         ),
//                       ),
//
//                       const SizedBox(width: 15),
//
//                       Expanded(
//                         child: OutlinedButton.icon(
//                           style: OutlinedButton.styleFrom(
//                             padding: const EdgeInsets.symmetric(vertical: 14),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                           onPressed: () {},
//                           icon: const Icon(Icons.apple),
//                           label: const Text("Apple"),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   const SizedBox(height: 35),
//
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Don't have an account? ",
//                         style: Ktext.body,
//                       ),
//                       GestureDetector(
//                         onTap: () {},
//                         child: Text(
//                           "Sign Up",
//                           style: Ktext.link,
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   const SizedBox(height: 20),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }