// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:login_page/Day%20-%2011/widget/kcolor.dart';
// import 'package:login_page/Day%20-%2011/widget/ktext.dart';
// import 'package:login_page/Day%20-%2011/widget/ktextfield.dart';
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
//                   // Neumorphic Outer Floating Card
//                   Container(
//                     padding: const EdgeInsets.all(28),
//                     decoration: BoxDecoration(
//                       color: Kcolor.cardBg,
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Kcolor.darkShadow,
//                           offset: Offset(8, 8),
//                           blurRadius: 18,
//                         ),
//                         BoxShadow(
//                           color: Kcolor.lightShadow,
//                           offset: Offset(-8, -8),
//                           blurRadius: 18,
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         // Extruded Center Icon Module
//                         Container(
//                           height: 76,
//                           width: 76,
//                           decoration: BoxDecoration(
//                             color: Kcolor.background,
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                               color: Kcolor.fieldBorder,
//                               width: 2,
//                             ),
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Kcolor.darkShadow,
//                                 offset: Offset(4, 4),
//                                 blurRadius: 10,
//                               ),
//                             ],
//                           ),
//                           child: const Icon(
//                             Icons.fingerprint,
//                             size: 42,
//                             color: Kcolor.cyanAccent,
//                           ),
//                         ),
//
//                         const SizedBox(height: 20),
//
//                         Ktext.heading("AUTHENTICATE"),
//                         const SizedBox(height: 6),
//                         Ktext.subHeading("Enter your security access credentials"),
//
//                         const SizedBox(height: 32),
//
//                         // Email Field Well
//                         Ktextfield.build(
//                           controller: emailController,
//                           hint: "User Identity / Email",
//                           prefixIcon: CupertinoIcons.person_fill,
//                           keyboardType: TextInputType.emailAddress,
//                         ),
//
//                         const SizedBox(height: 18),
//
//                         // Password Field Well
//                         Ktextfield.build(
//                           controller: passwordController,
//                           hint: "Security Key",
//                           prefixIcon: CupertinoIcons.lock_fill,
//                           obscureText: hidePassword,
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               hidePassword
//                                   ? CupertinoIcons.eye_slash_fill
//                                   : CupertinoIcons.eye_fill,
//                               color: Kcolor.textSecondary,
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
//                             child: Ktext.forgot("Reset Key?"),
//                           ),
//                         ),
//
//                         const SizedBox(height: 26),
//
//                         // Glowing Cyan Action Button
//                         Container(
//                           width: double.infinity,
//                           height: 52,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16),
//                             gradient: const LinearGradient(
//                               colors: [
//                                 Kcolor.cyanAccent,
//                                 Kcolor.blueGradientEnd,
//                               ],
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Kcolor.cyanAccent.withOpacity(0.4),
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
//                         Ktext.socialTitle("QUICK ACCESS"),
//
//                         const SizedBox(height: 18),
//
//                         // Neumorphic Social Buttons Row
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
//                   // Footer Register Link
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Ktext.normal("Need an account? "),
//                       TextButton(
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.zero,
//                           minimumSize: const Size(0, 0),
//                           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         ),
//                         onPressed: () {},
//                         child: Ktext.link("Register Here"),
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
//         height: 48,
//         width: 60,
//         decoration: BoxDecoration(
//           color: Kcolor.background,
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(
//             color: Kcolor.fieldBorder,
//             width: 1,
//           ),
//           boxShadow: const [
//             BoxShadow(
//               color: Kcolor.darkShadow,
//               offset: Offset(2, 2),
//               blurRadius: 4,
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