// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:login_page/Day%20-%2014/widget/kcolor.dart';
// import 'package:login_page/Day%20-%2014/widget/ktext.dart';
// import 'package:login_page/Day%20-%2014/widget/ktextfield.dart';
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
//           child: Stack(
//             children: [
//               // Top Curved Header Background
//               Container(
//                 height: size.height * 0.40,
//                 width: double.infinity,
//                 padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).padding.top + 20,
//                   left: 24,
//                   right: 24,
//                 ),
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Kcolor.primaryGradientStart,
//                       Kcolor.primaryGradientEnd,
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(40),
//                     bottomRight: Radius.circular(40),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 72,
//                       width: 72,
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.2),
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: Colors.white.withOpacity(0.4),
//                           width: 1.5,
//                         ),
//                       ),
//                       child: const Icon(
//                         CupertinoIcons.sparkles,
//                         size: 38,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     Ktext.heading("Welcome Back"),
//                     const SizedBox(height: 6),
//                     Ktext.subHeading("Sign in to your account to continue"),
//                   ],
//                 ),
//               ),
//
//               // Floating Center Form Card
//               Positioned(
//                 top: size.height * 0.28,
//                 left: 20,
//                 right: 20,
//                 child: Container(
//                   padding: const EdgeInsets.all(26),
//                   decoration: BoxDecoration(
//                     color: Kcolor.cardBg,
//                     borderRadius: BorderRadius.circular(32),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Kcolor.primaryGradientStart.withOpacity(0.12),
//                         blurRadius: 30,
//                         offset: const Offset(0, 15),
//                       ),
//                     ],
//                   ),
//                   child: Column(
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
//                           child: Ktext.forgot("Forgot Password?"),
//                         ),
//                       ),
//
//                       const SizedBox(height: 24),
//
//                       // Pill Action Button
//                       Container(
//                         width: double.infinity,
//                         height: 54,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           gradient: const LinearGradient(
//                             colors: [
//                               Kcolor.primaryGradientStart,
//                               Kcolor.primaryGradientEnd,
//                             ],
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Kcolor.primaryGradientStart.withOpacity(0.35),
//                               blurRadius: 18,
//                               offset: const Offset(0, 8),
//                             ),
//                           ],
//                         ),
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.transparent,
//                             shadowColor: Colors.transparent,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                           child: Ktext.button("LOG IN"),
//                         ),
//                       ),
//
//                       const SizedBox(height: 26),
//
//                       Ktext.socialTitle("OR CONTINUE WITH"),
//
//                       const SizedBox(height: 18),
//
//                       // Social Media Row
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           socialButton(Icons.g_mobiledata_rounded, () {}),
//                           socialButton(Icons.apple_rounded, () {}),
//                           socialButton(Icons.facebook_rounded, () {}),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               // Footer Sign Up Link
//               Positioned(
//                 bottom: 30,
//                 left: 0,
//                 right: 0,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Ktext.normal("Don't have an account? "),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                         padding: EdgeInsets.zero,
//                         minimumSize: const Size(0, 0),
//                         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                       ),
//                       onPressed: () {},
//                       child: Ktext.link("Sign Up"),
//                     ),
//                   ],
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
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//         height: 50,
//         width: 68,
//         decoration: BoxDecoration(
//           color: Kcolor.socialBg,
//           borderRadius: BorderRadius.circular(20),
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