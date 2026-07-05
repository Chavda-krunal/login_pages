// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%2012/widget/kcolor.dart';
// import 'package:login_page/Day%20-%2012/widget/ktext.dart';
// import 'package:login_page/Day%20-%2012/widget/ktextfield.dart';
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
//       backgroundColor: Kcolor.background,
//       body: SingleChildScrollView(
//         child: SizedBox(
//           height: size.height,
//           child: Column(
//             children: [
//               // Dark Top Banner Section
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).padding.top + 24,
//                   bottom: 36,
//                   left: 24,
//                   right: 24,
//                 ),
//                 decoration: const BoxDecoration(
//                   color: Kcolor.headerBg,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(36),
//                     bottomRight: Radius.circular(36),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     // Top Emerald Emblem
//                     Container(
//                       height: 72,
//                       width: 72,
//                       decoration: BoxDecoration(
//                         color: Kcolor.softEmeraldBg,
//                         borderRadius: BorderRadius.circular(22),
//                         border: Border.all(
//                           color: Kcolor.emeraldPrimary.withOpacity(0.3),
//                           width: 1.5,
//                         ),
//                       ),
//                       child: const Icon(
//                         CupertinoIcons.shield_fill,
//                         size: 36,
//                         color: Kcolor.emeraldPrimary,
//                       ),
//                     ),
//
//                     const SizedBox(height: 18),
//
//                     Ktext.heading("Welcome Back"),
//                     const SizedBox(height: 6),
//                     Ktext.subHeading("Log in to manage your workspace"),
//                   ],
//                 ),
//               ),
//
//               // Bottom White Form Sheet Section
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 24,
//                     vertical: 24,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Email Field
//                       Ktextfield.build(
//                         controller: emailController,
//                         hint: "Email Address",
//                         prefixIcon: CupertinoIcons.mail_solid,
//                         keyboardType: TextInputType.emailAddress,
//                       ),
//
//                       const SizedBox(height: 18),
//
//                       // Password Field
//                       Ktextfield.build(
//                         controller: passwordController,
//                         hint: "Password",
//                         prefixIcon: CupertinoIcons.lock_fill,
//                         obscureText: hidePassword,
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             hidePassword
//                                 ? CupertinoIcons.eye_slash
//                                 : CupertinoIcons.eye,
//                             color: Kcolor.textSecondary,
//                             size: 18,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               hidePassword = !hidePassword;
//                             });
//                           },
//                         ),
//                       ),
//
//                       const SizedBox(height: 10),
//
//                       // Forgot Password Link
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: TextButton(
//                           style: TextButton.styleFrom(
//                             padding: EdgeInsets.zero,
//                             minimumSize: const Size(0, 0),
//                             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                           ),
//                           onPressed: () {},
//                           child: Ktext.forgot("Forgot password?"),
//                         ),
//                       ),
//
//                       const SizedBox(height: 24),
//
//                       // Emerald Gradient Action Button
//                       Container(
//                         width: double.infinity,
//                         height: 54,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16),
//                           gradient: const LinearGradient(
//                             colors: [
//                               Kcolor.emeraldPrimary,
//                               Kcolor.jadeDark,
//                             ],
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Kcolor.emeraldPrimary.withOpacity(0.35),
//                               blurRadius: 16,
//                               offset: const Offset(0, 6),
//                             ),
//                           ],
//                         ),
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.transparent,
//                             shadowColor: Colors.transparent,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(16),
//                             ),
//                           ),
//                           child: Ktext.button("LOG IN"),
//                         ),
//                       ),
//
//                       const SizedBox(height: 28),
//
//                       Ktext.socialTitle("OR SIGN IN WITH"),
//
//                       const SizedBox(height: 18),
//
//                       // Social Buttons Row
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           socialButton(Icons.g_mobiledata_rounded, () {}),
//                           socialButton(Icons.apple_rounded, () {}),
//                           socialButton(Icons.facebook_rounded, () {}),
//                         ],
//                       ),
//
//                       const Spacer(),
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
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget socialButton(IconData icon, VoidCallback onTap) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(14),
//       child: Container(
//         height: 50,
//         width: 68,
//         decoration: BoxDecoration(
//           color: Kcolor.socialBg,
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(
//             color: Kcolor.socialBorder,
//             width: 1,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.02),
//               blurRadius: 10,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Icon(
//           icon,
//           color: Kcolor.textPrimary,
//           size: 26,
//         ),
//       ),
//     );
//   }
// }