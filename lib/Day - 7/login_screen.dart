// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%207/widget/kcolor.dart';
// import 'package:login_page/Day%20-%207/widget/ktext.dart';
// import 'package:login_page/Day%20-%207/widget/ktextfield.dart';
//
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
//       backgroundColor: Kcolor.gradient3,
//       body: Stack(
//         children: [
//           // Forest Dark Gradient Background
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Kcolor.gradient1,
//                   Kcolor.gradient2,
//                   Kcolor.gradient3,
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//
//           // Emerald Glow Circle Top Right
//           Positioned(
//             top: -60,
//             right: -40,
//             child: Container(
//               height: 250,
//               width: 250,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                   colors: [
//                     Kcolor.mintAccent.withOpacity(0.35),
//                     Colors.transparent,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//
//           // Soft Mint Glow Bottom Left
//           Positioned(
//             bottom: -80,
//             left: -60,
//             child: Container(
//               height: 270,
//               width: 270,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                   colors: [
//                     Kcolor.emeraldLight.withOpacity(0.25),
//                     Colors.transparent,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//
//           SafeArea(
//             child: Center(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 24,
//                   vertical: 20,
//                 ),
//                 child: ConstrainedBox(
//                   constraints: BoxConstraints(
//                     minHeight: size.height - 100,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Emerald Leaf Badge Logo
//                       Container(
//                         height: 92,
//                         width: 92,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           gradient: const LinearGradient(
//                             colors: [
//                               Kcolor.emeraldLight,
//                               Kcolor.mintAccent,
//                             ],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Kcolor.mintAccent.withOpacity(0.4),
//                               blurRadius: 25,
//                               offset: const Offset(0, 10),
//                             ),
//                           ],
//                         ),
//                         child: const Icon(
//                           CupertinoIcons.leaf_arrow_circlepath,
//                           size: 46,
//                           color: Kcolor.buttonText,
//                         ),
//                       ),
//
//                       const SizedBox(height: 24),
//
//                       Ktext.heading("Welcome Back"),
//                       const SizedBox(height: 8),
//                       Ktext.subHeading("Log in to your sustainable workspace"),
//
//                       const SizedBox(height: 36),
//
//                       // Glassmorphic Card Container
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(30),
//                         child: BackdropFilter(
//                           filter: ImageFilter.blur(
//                             sigmaX: 20,
//                             sigmaY: 20,
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.all(24),
//                             decoration: BoxDecoration(
//                               color: Kcolor.glass,
//                               borderRadius: BorderRadius.circular(30),
//                               border: Border.all(
//                                 color: Kcolor.glassBorder,
//                                 width: 1.2,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 30,
//                                   offset: const Offset(0, 15),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               children: [
//                                 // Email Field
//                                 Ktextfield.build(
//                                   controller: emailController,
//                                   hint: "Email Address",
//                                   prefixIcon: Icons.email_outlined,
//                                   keyboardType: TextInputType.emailAddress,
//                                 ),
//
//                                 const SizedBox(height: 18),
//
//                                 // Password Field
//                                 Ktextfield.build(
//                                   controller: passwordController,
//                                   hint: "Password",
//                                   prefixIcon: Icons.lock_outline_rounded,
//                                   obscureText: hidePassword,
//                                   suffixIcon: IconButton(
//                                     icon: Icon(
//                                       hidePassword
//                                           ? Icons.visibility_off_outlined
//                                           : Icons.visibility_outlined,
//                                       color: Kcolor.textSecondary,
//                                       size: 20,
//                                     ),
//                                     onPressed: () {
//                                       setState(() {
//                                         hidePassword = !hidePassword;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 const SizedBox(height: 10),
//
//                                 // Forgot Password Link
//                                 Align(
//                                   alignment: Alignment.centerRight,
//                                   child: TextButton(
//                                     style: TextButton.styleFrom(
//                                       padding: EdgeInsets.zero,
//                                       minimumSize: const Size(0, 0),
//                                       tapTargetSize:
//                                       MaterialTapTargetSize.shrinkWrap,
//                                     ),
//                                     onPressed: () {},
//                                     child: Ktext.forgot("Forgot Password?"),
//                                   ),
//                                 ),
//
//                                 const SizedBox(height: 26),
//
//                                 // Emerald Mint Button
//                                 Container(
//                                   width: double.infinity,
//                                   height: 54,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(18),
//                                     gradient: const LinearGradient(
//                                       colors: [
//                                         Kcolor.emeraldLight,
//                                         Kcolor.mintAccent,
//                                       ],
//                                       begin: Alignment.centerLeft,
//                                       end: Alignment.centerRight,
//                                     ),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Kcolor.mintAccent.withOpacity(0.35),
//                                         blurRadius: 20,
//                                         offset: const Offset(0, 8),
//                                       ),
//                                     ],
//                                   ),
//                                   child: ElevatedButton(
//                                     onPressed: () {},
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: Colors.transparent,
//                                       shadowColor: Colors.transparent,
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(18),
//                                       ),
//                                     ),
//                                     child: Ktext.button("LOG IN"),
//                                   ),
//                                 ),
//
//                                 const SizedBox(height: 28),
//
//                                 Ktext.socialTitle("Or Continue With"),
//
//                                 const SizedBox(height: 20),
//
//                                 // Social Media Row
//                                 Row(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     socialButton(Icons.g_mobiledata_rounded, () {}),
//                                     socialButton(Icons.apple_rounded, () {}),
//                                     socialButton(Icons.facebook_rounded, () {}),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//
//                       const SizedBox(height: 28),
//
//                       // Sign Up Footer
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Ktext.normal("Don't have an account? "),
//                           TextButton(
//                             style: TextButton.styleFrom(
//                               padding: EdgeInsets.zero,
//                               minimumSize: const Size(0, 0),
//                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                             ),
//                             onPressed: () {},
//                             child: Ktext.link("Sign Up"),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget socialButton(IconData icon, VoidCallback onTap) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(16),
//       child: Container(
//         height: 52,
//         width: 52,
//         decoration: BoxDecoration(
//           color: Kcolor.glass,
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(
//             color: Kcolor.glassBorder,
//             width: 1,
//           ),
//         ),
//         child: Icon(
//           icon,
//           color: Kcolor.white,
//           size: 28,
//         ),
//       ),
//     );
//   }
// }