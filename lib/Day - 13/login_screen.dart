// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%2013/widget/kcolor.dart';
// import 'package:login_page/Day%20-%2013/widget/ktext.dart';
// import 'package:login_page/Day%20-%2013/widget/ktextfield.dart';
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
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 24,
//               vertical: 20,
//             ),
//             child: ConstrainedBox(
//               constraints: BoxConstraints(
//                 minHeight: size.height - 80,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Terracotta Organic Badge Icon
//                   Container(
//                     height: 84,
//                     width: 84,
//                     decoration: BoxDecoration(
//                       color: Kcolor.terracotta.withOpacity(0.1),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Kcolor.terracotta.withOpacity(0.25),
//                         width: 2,
//                       ),
//                     ),
//                     child: const Icon(
//                       CupertinoIcons.house_fill,
//                       size: 40,
//                       color: Kcolor.terracotta,
//                     ),
//                   ),
//
//                   const SizedBox(height: 24),
//
//                   Ktext.heading("Welcome Home"),
//                   const SizedBox(height: 6),
//                   Ktext.subHeading("Log in to continue your journey"),
//
//                   const SizedBox(height: 32),
//
//                   // Clean White Card Container with Warm Shadow
//                   Container(
//                     padding: const EdgeInsets.all(26),
//                     decoration: BoxDecoration(
//                       color: Kcolor.cardBg,
//                       borderRadius: BorderRadius.circular(30),
//                       border: Border.all(
//                         color: Kcolor.fieldBorder,
//                         width: 1,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Kcolor.terracotta.withOpacity(0.06),
//                           blurRadius: 30,
//                           offset: const Offset(0, 12),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         // Email Field
//                         Ktextfield.build(
//                           controller: emailController,
//                           hint: "Email Address",
//                           prefixIcon: CupertinoIcons.mail_solid,
//                           keyboardType: TextInputType.emailAddress,
//                         ),
//
//                         const SizedBox(height: 18),
//
//                         // Password Field
//                         Ktextfield.build(
//                           controller: passwordController,
//                           hint: "Password",
//                           prefixIcon: CupertinoIcons.lock_fill,
//                           obscureText: hidePassword,
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               hidePassword
//                                   ? CupertinoIcons.eye_slash
//                                   : CupertinoIcons.eye,
//                               color: Kcolor.taupe,
//                               size: 18,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 hidePassword = !hidePassword;
//                               });
//                             },
//                           ),
//                         ),
//
//                         const SizedBox(height: 10),
//
//                         // Forgot Password Link
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: TextButton(
//                             style: TextButton.styleFrom(
//                               padding: EdgeInsets.zero,
//                               minimumSize: const Size(0, 0),
//                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                             ),
//                             onPressed: () {},
//                             child: Ktext.forgot("Forgot password?"),
//                           ),
//                         ),
//
//                         const SizedBox(height: 26),
//
//                         // Terracotta Gradient Action Button
//                         Container(
//                           width: double.infinity,
//                           height: 54,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16),
//                             gradient: const LinearGradient(
//                               colors: [
//                                 Kcolor.terracotta,
//                                 Kcolor.terracottaDark,
//                               ],
//                               begin: Alignment.centerLeft,
//                               end: Alignment.centerRight,
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Kcolor.terracotta.withOpacity(0.3),
//                                 blurRadius: 16,
//                                 offset: const Offset(0, 6),
//                               ),
//                             ],
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               shadowColor: Colors.transparent,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(16),
//                               ),
//                             ),
//                             child: Ktext.button("LOG IN"),
//                           ),
//                         ),
//
//                         const SizedBox(height: 28),
//
//                         Ktext.socialTitle("OR CONTINUE WITH"),
//
//                         const SizedBox(height: 20),
//
//                         // Social Buttons Row
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             socialButton(Icons.g_mobiledata_rounded, () {}),
//                             socialButton(Icons.apple_rounded, () {}),
//                             socialButton(Icons.facebook_rounded, () {}),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   const SizedBox(height: 28),
//
//                   // Sign Up Footer Link
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Ktext.normal("Don't have an account? "),
//                       TextButton(
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.zero,
//                           minimumSize: const Size(0, 0),
//                           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         ),
//                         onPressed: () {},
//                         child: Ktext.link("Sign Up"),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
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
//           color: Kcolor.espresso,
//           size: 26,
//         ),
//       ),
//     );
//   }
// }