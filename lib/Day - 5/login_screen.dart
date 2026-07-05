// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%205/widget/kcolor.dart';
// import 'package:login_page/Day%20-%205/widget/ktext.dart';
// import 'package:login_page/Day%20-%205/widget/ktextfield.dart';
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
//           // Dark Gradient Background
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
//           // Neon Glow Circle Top Right (Cyan)
//           Positioned(
//             top: -60,
//             right: -40,
//             child: Container(
//               height: 240,
//               width: 240,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                   colors: [
//                     Kcolor.cyanAccent.withOpacity(0.35),
//                     Colors.transparent,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//
//           // Neon Glow Circle Middle Left (Violet)
//           Positioned(
//             bottom: 120,
//             left: -80,
//             child: Container(
//               height: 280,
//               width: 280,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                   colors: [
//                     Kcolor.violetAccent.withOpacity(0.3),
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
//                       // Neon Cyber Badge Logo
//                       Container(
//                         height: 90,
//                         width: 90,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           gradient: const LinearGradient(
//                             colors: [
//                               Kcolor.cyanAccent,
//                               Kcolor.violetAccent,
//                             ],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Kcolor.cyanAccent.withOpacity(0.4),
//                               blurRadius: 25,
//                               spreadRadius: 2,
//                             ),
//                           ],
//                         ),
//                         child: const Icon(
//                           CupertinoIcons.lock_shield_fill,
//                           size: 46,
//                           color: Colors.white,
//                         ),
//                       ),
//
//                       const SizedBox(height: 24),
//
//                       Ktext.heading("Welcome Back"),
//                       const SizedBox(height: 8),
//                       Ktext.subHeading("Enter your credentials to access your workspace"),
//
//                       const SizedBox(height: 36),
//
//                       // Glassmorphic Card Container
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(28),
//                         child: BackdropFilter(
//                           filter: ImageFilter.blur(
//                             sigmaX: 18,
//                             sigmaY: 18,
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.all(24),
//                             decoration: BoxDecoration(
//                               color: Kcolor.glass,
//                               borderRadius: BorderRadius.circular(28),
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
//                                   prefixIcon: Icons.alternate_email_rounded,
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
//                                 // Neon Gradient Login Button
//                                 Container(
//                                   width: double.infinity,
//                                   height: 54,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(18),
//                                     gradient: const LinearGradient(
//                                       colors: [
//                                         Kcolor.cyanAccent,
//                                         Kcolor.violetAccent,
//                                       ],
//                                       begin: Alignment.centerLeft,
//                                       end: Alignment.centerRight,
//                                     ),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Kcolor.cyanAccent.withOpacity(0.35),
//                                         blurRadius: 18,
//                                         offset: const Offset(0, 6),
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
//                                     child: Ktext.button("SIGN IN"),
//                                   ),
//                                 ),
//
//                                 const SizedBox(height: 28),
//
//                                 Ktext.socialTitle("Or continue with"),
//
//                                 const SizedBox(height: 20),
//
//                                 // Social Login Row
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
//                       // Footer Navigation Link
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