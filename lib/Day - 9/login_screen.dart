// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%209/widget/kcolor.dart';
// import 'package:login_page/Day%20-%209/widget/ktext.dart';
// import 'package:login_page/Day%20-%209/widget/ktextfield.dart';
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
//       body: Stack(
//         children: [
//           // Top Amber Radial Glow
//           Positioned(
//             top: -80,
//             right: -60,
//             child: Container(
//               height: 280,
//               width: 280,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                   colors: [
//                     Kcolor.amberAccent.withOpacity(0.35),
//                     Colors.transparent,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//
//           // Bottom Flame Red Glow
//           Positioned(
//             bottom: -80,
//             left: -60,
//             child: Container(
//               height: 280,
//               width: 280,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                   colors: [
//                     Kcolor.flameRed.withOpacity(0.25),
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
//                     minHeight: size.height - 80,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Header Logo Badge
//                       Container(
//                         height: 86,
//                         width: 86,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           gradient: const LinearGradient(
//                             colors: [
//                               Kcolor.amberAccent,
//                               Kcolor.flameRed,
//                             ],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Kcolor.amberAccent.withOpacity(0.4),
//                               blurRadius: 25,
//                               offset: const Offset(0, 8),
//                             ),
//                           ],
//                         ),
//                         child: const Icon(
//                           CupertinoIcons.flame_fill,
//                           size: 44,
//                           color: Colors.white,
//                         ),
//                       ),
//
//                       const SizedBox(height: 24),
//
//                       Ktext.heading("Get Started"),
//                       const SizedBox(height: 6),
//                       Ktext.subHeading("Enter your credentials to continue"),
//
//                       const SizedBox(height: 32),
//
//                       // Card Container
//                       Container(
//                         padding: const EdgeInsets.all(24),
//                         decoration: BoxDecoration(
//                           color: Kcolor.cardBg,
//                           borderRadius: BorderRadius.circular(28),
//                           border: Border.all(
//                             color: Kcolor.glassBorder,
//                             width: 1.2,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.5),
//                               blurRadius: 30,
//                               offset: const Offset(0, 15),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           children: [
//                             // Email Field
//                             Ktextfield.build(
//                               controller: emailController,
//                               hint: "Email Address",
//                               prefixIcon: CupertinoIcons.mail_solid,
//                               keyboardType: TextInputType.emailAddress,
//                             ),
//
//                             const SizedBox(height: 18),
//
//                             // Password Field
//                             Ktextfield.build(
//                               controller: passwordController,
//                               hint: "Password",
//                               prefixIcon: CupertinoIcons.lock_fill,
//                               obscureText: hidePassword,
//                               suffixIcon: IconButton(
//                                 icon: Icon(
//                                   hidePassword
//                                       ? CupertinoIcons.eye_slash
//                                       : CupertinoIcons.eye,
//                                   color: Kcolor.textSecondary,
//                                   size: 18,
//                                 ),
//                                 onPressed: () {
//                                   setState(() {
//                                     hidePassword = !hidePassword;
//                                   });
//                                 },
//                               ),
//                             ),
//
//                             const SizedBox(height: 10),
//
//                             // Forgot Password Link
//                             Align(
//                               alignment: Alignment.centerRight,
//                               child: TextButton(
//                                 style: TextButton.styleFrom(
//                                   padding: EdgeInsets.zero,
//                                   minimumSize: const Size(0, 0),
//                                   tapTargetSize:
//                                   MaterialTapTargetSize.shrinkWrap,
//                                 ),
//                                 onPressed: () {},
//                                 child: Ktext.forgot("Forgot Password?"),
//                               ),
//                             ),
//
//                             const SizedBox(height: 26),
//
//                             // Gradient Button
//                             Container(
//                               width: double.infinity,
//                               height: 54,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(16),
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Kcolor.amberAccent,
//                                     Kcolor.flameRed,
//                                   ],
//                                   begin: Alignment.centerLeft,
//                                   end: Alignment.centerRight,
//                                 ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Kcolor.amberAccent.withOpacity(0.4),
//                                     blurRadius: 20,
//                                     offset: const Offset(0, 8),
//                                   ),
//                                 ],
//                               ),
//                               child: ElevatedButton(
//                                 onPressed: () {},
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: Colors.transparent,
//                                   shadowColor: Colors.transparent,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(16),
//                                   ),
//                                 ),
//                                 child: Ktext.button("LOG IN"),
//                               ),
//                             ),
//
//                             const SizedBox(height: 28),
//
//                             Ktext.socialTitle("Or Continue With"),
//
//                             const SizedBox(height: 20),
//
//                             // Social Media Buttons Row
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 socialButton(Icons.g_mobiledata_rounded, () {}),
//                                 socialButton(Icons.apple_rounded, () {}),
//                                 socialButton(Icons.facebook_rounded, () {}),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//
//                       const SizedBox(height: 28),
//
//                       // Sign Up Link
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
//       borderRadius: BorderRadius.circular(14),
//       child: Container(
//         height: 50,
//         width: 60,
//         decoration: BoxDecoration(
//           color: Kcolor.socialBg,
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(
//             color: Kcolor.socialBorder,
//             width: 1,
//           ),
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