// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
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
//       body: Stack(
//         children: [
//           // Background Gradient
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color(0xff6C63FF),
//                   Color(0xff4A47A3),
//                   Color(0xff1B1F3B),
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//
//           // Decorative Circles
//           Positioned(
//             top: -80,
//             right: -60,
//             child: Container(
//               height: 220,
//               width: 220,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(.12),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//
//           Positioned(
//             bottom: -100,
//             left: -80,
//             child: Container(
//               height: 260,
//               width: 260,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(.08),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//
//           SafeArea(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 24,
//                 vertical: 20,
//               ),
//               child: SizedBox(
//                 height: size.height - 60,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Icon(
//                       CupertinoIcons.person_crop_circle_fill,
//                       size: 90,
//                       color: Colors.white,
//                     ),
//                     const SizedBox(height: 20),
//
//                     const Text(
//                       "Welcome Back",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//
//                     const SizedBox(height: 8),
//
//                     const Text(
//                       "Login to continue",
//                       style: TextStyle(
//                         color: Colors.white70,
//                         fontSize: 16,
//                       ),
//                     ),
//
//                     const SizedBox(height: 40),
//
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(30),
//                       child: BackdropFilter(
//                         filter: ImageFilter.blur(
//                           sigmaX: 15,
//                           sigmaY: 15,
//                         ),
//                         child: Container(
//                           padding: const EdgeInsets.all(24),
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(.15),
//                             borderRadius: BorderRadius.circular(30),
//                             border: Border.all(
//                               color: Colors.white.withOpacity(.2),
//                             ),
//                           ),
//                           child: Column(
//                             children: [
//                               TextField(
//                                 controller: emailController,
//                                 keyboardType: TextInputType.emailAddress,
//                                 style: const TextStyle(color: Colors.white),
//                                 decoration: InputDecoration(
//                                   hintText: "Email",
//                                   hintStyle: const TextStyle(
//                                     color: Colors.white70,
//                                   ),
//                                   prefixIcon: const Icon(
//                                     Icons.email_outlined,
//                                     color: Colors.white,
//                                   ),
//                                   filled: true,
//                                   fillColor: Colors.white.withOpacity(.08),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(18),
//                                     borderSide: BorderSide.none,
//                                   ),
//                                 ),
//                               ),
//
//                               const SizedBox(height: 20),
//
//                               TextField(
//                                 controller: passwordController,
//                                 obscureText: hidePassword,
//                                 style: const TextStyle(color: Colors.white),
//                                 decoration: InputDecoration(
//                                   hintText: "Password",
//                                   hintStyle: const TextStyle(
//                                     color: Colors.white70,
//                                   ),
//                                   prefixIcon: const Icon(
//                                     Icons.lock_outline,
//                                     color: Colors.white,
//                                   ),
//                                   suffixIcon: IconButton(
//                                     icon: Icon(
//                                       hidePassword
//                                           ? Icons.visibility_off
//                                           : Icons.visibility,
//                                       color: Colors.white,
//                                     ),
//                                     onPressed: () {
//                                       setState(() {
//                                         hidePassword = !hidePassword;
//                                       });
//                                     },
//                                   ),
//                                   filled: true,
//                                   fillColor: Colors.white.withOpacity(.08),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(18),
//                                     borderSide: BorderSide.none,
//                                   ),
//                                 ),
//                               ),
//
//                               const SizedBox(height: 10),
//
//                               Align(
//                                 alignment: Alignment.centerRight,
//                                 child: TextButton(
//                                   onPressed: () {},
//                                   child: const Text(
//                                     "Forgot Password?",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//
//                               const SizedBox(height: 10),
//
//                               SizedBox(
//                                 width: double.infinity,
//                                 height: 55,
//                                 child: ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.white,
//                                     foregroundColor: const Color(0xff4A47A3),
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(18),
//                                     ),
//                                   ),
//                                   child: const Text(
//                                     "LOGIN",
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//
//                               const SizedBox(height: 30),
//
//                               const Text(
//                                 "Or Continue With",
//                                 style: TextStyle(
//                                   color: Colors.white70,
//                                 ),
//                               ),
//
//                               const SizedBox(height: 20),
//
//                               Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   socialButton(Icons.g_mobiledata),
//                                   socialButton(Icons.apple),
//                                   socialButton(Icons.facebook),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//
//                     const SizedBox(height: 30),
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text(
//                           "Don't have an account?",
//                           style: TextStyle(color: Colors.white70),
//                         ),
//                         TextButton(
//                           onPressed: () {},
//                           child: const Text(
//                             "Sign Up",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget socialButton(IconData icon) {
//     return Container(
//       height: 55,
//       width: 55,
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(.15),
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(color: Colors.white24),
//       ),
//       child: Icon(
//         icon,
//         color: Colors.white,
//         size: 30,
//       ),
//     );
//   }
// }