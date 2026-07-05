// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%202/widget/ktext.dart';
// import 'package:login_page/Day%20-%202/widget/ktextfield.dart';
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
//   bool isHidden = true;
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
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       resizeToAvoidBottomInset: true,
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xff0F172A),
//               Color(0xff1E3A8A),
//               Color(0xff7C3AED),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 25),
//             child: Column(
//               children: [
//                 const SizedBox(height: 50),
//
//                 /// Logo
//                 Container(
//                   height: 95,
//                   width: 95,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     shape: BoxShape.circle,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.white.withOpacity(.3),
//                         blurRadius: 20,
//                       ),
//                     ],
//                   ),
//                   child: const Icon(
//                     Icons.sports_cricket,
//                     color: Colors.green,
//                     size: 50,
//                   ),
//                 ),
//
//                 const SizedBox(height: 30),
//
//                 Ktext.heading("Welcome Back 👋"),
//
//                 const SizedBox(height: 10),
//
//                 Ktext.subtitle(
//                   "Login to continue your journey",
//                 ),
//
//                 const SizedBox(height: 45),
//
//                 /// Email
//                 Ktextfield.build(
//                   controller: emailController,
//                   hintText: "Email Address",
//                   prefixIcon: Icons.email_outlined,
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//
//                 const SizedBox(height: 20),
//
//                 /// Password
//                 Ktextfield.build(
//                   controller: passwordController,
//                   hintText: "Password",
//                   prefixIcon: Icons.lock_outline,
//                   obscureText: isHidden,
//                   suffixIcon: isHidden
//                       ? Icons.visibility_off_outlined
//                       : Icons.visibility_outlined,
//                   onSuffixTap: () {
//                     setState(() {
//                       isHidden = !isHidden;
//                     });
//                   },
//                 ),
//
//                 const SizedBox(height: 12),
//
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: () {},
//                     child: const Text(
//                       "Forgot Password?",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//
//                 const SizedBox(height: 20),
//
//                 /// Login Button
//                 InkWell(
//                   onTap: () {},
//                   borderRadius: BorderRadius.circular(18),
//                   child: Container(
//                     height: 60,
//                     width: double.infinity,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(18),
//                       gradient: const LinearGradient(
//                         colors: [
//                           Color(0xff2563EB),
//                           Color(0xff7C3AED),
//                         ],
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.blue.withOpacity(.4),
//                           blurRadius: 18,
//                           offset: const Offset(0, 10),
//                         ),
//                       ],
//                     ),
//                     child: Ktext.button("LOGIN"),
//                   ),
//                 ),
//
//                 const SizedBox(height: 35),
//
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         color: Colors.white.withOpacity(.3),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Text(
//                         "OR CONTINUE",
//                         style: TextStyle(
//                           color: Colors.white70,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Divider(
//                         color: Colors.white.withOpacity(.3),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 const SizedBox(height: 30),
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     socialButton(Icons.g_mobiledata),
//                     socialButton(Icons.apple),
//                     socialButton(Icons.facebook),
//                   ],
//                 ),
//
//                 const SizedBox(height: 40),
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Don't have an account?",
//                       style: TextStyle(
//                         color: Colors.white70,
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () {},
//                       child: const Text(
//                         "Sign Up",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 const SizedBox(height: 30),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget socialButton(IconData icon) {
//     return InkWell(
//       onTap: () {},
//       borderRadius: BorderRadius.circular(30),
//       child: Container(
//         height: 58,
//         width: 58,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.white.withOpacity(.12),
//           border: Border.all(
//             color: Colors.white.withOpacity(.2),
//           ),
//         ),
//         child: Icon(
//           icon,
//           color: Colors.white,
//           size: 30,
//         ),
//       ),
//     );
//   }
// }