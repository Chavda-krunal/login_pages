import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Day%20-%2015/widget/kcolor.dart';
import 'package:login_page/Day%20-%2015/widget/ktext.dart';
import 'package:login_page/Day%20-%2015/widget/ktextfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool hidePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Kcolor.background,
      body: Stack(
        children: [
          // Top Volt Lime Radial Lighting Orb
          Positioned(
            top: -100,
            right: -60,
            child: Container(
              height: 280,
              width: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Kcolor.voltLime.withOpacity(0.25),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // Bottom Cyber Cyan Radial Lighting Orb
          Positioned(
            bottom: -100,
            left: -60,
            child: Container(
              height: 280,
              width: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Kcolor.cyberCyan.withOpacity(0.2),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: size.height - 80,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // High-Tech Cyber Badge Emblem
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Kcolor.cardBg,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Kcolor.voltLime,
                            width: 1.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Kcolor.voltLime.withOpacity(0.35),
                              blurRadius: 20,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Icon(
                          CupertinoIcons.shield_fill,
                          size: 40,
                          color: Kcolor.voltLime,
                        ),
                      ),

                      const SizedBox(height: 24),

                      Ktext.heading("SYSTEM LOGIN"),
                      const SizedBox(height: 6),
                      Ktext.subHeading("// AUTHORIZATION REQUIRED"),

                      const SizedBox(height: 32),

                      // Card Container
                      Container(
                        padding: const EdgeInsets.all(26),
                        decoration: BoxDecoration(
                          color: Kcolor.cardBg,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Kcolor.fieldBorder,
                            width: 1.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.6),
                              blurRadius: 30,
                              offset: const Offset(0, 15),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Email Input Field
                            Ktextfield.build(
                              controller: emailController,
                              hint: "USER IDENTIFIER",
                              prefixIcon: CupertinoIcons.person_fill,
                              keyboardType: TextInputType.emailAddress,
                            ),

                            const SizedBox(height: 18),

                            // Password Input Field
                            Ktextfield.build(
                              controller: passwordController,
                              hint: "ACCESS PASSCODE",
                              prefixIcon: CupertinoIcons.lock_fill,
                              obscureText: hidePassword,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  hidePassword
                                      ? CupertinoIcons.eye_slash_fill
                                      : CupertinoIcons.eye_fill,
                                  color: Kcolor.textSecondary,
                                  size: 18,
                                ),
                                onPressed: () {
                                  setState(() {
                                    hidePassword = !hidePassword;
                                  });
                                },
                              ),
                            ),

                            const SizedBox(height: 10),

                            // Forgot Password Link
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: const Size(0, 0),
                                  tapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                                ),
                                onPressed: () {},
                                child: Ktext.forgot("RECOVER KEY?"),
                              ),
                            ),

                            const SizedBox(height: 26),

                            // High-Vis Volt Button
                            Container(
                              width: double.infinity,
                              height: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                  colors: [
                                    Kcolor.voltLime,
                                    Color(0xFFA6D900),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Kcolor.voltLime.withOpacity(0.4),
                                    blurRadius: 18,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Ktext.button("AUTHENTICATE"),
                              ),
                            ),

                            const SizedBox(height: 28),

                            Ktext.socialTitle("// THIRD PARTY AUTH"),

                            const SizedBox(height: 18),

                            // Social Media Buttons Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                socialButton(Icons.g_mobiledata_rounded, () {}),
                                socialButton(Icons.apple_rounded, () {}),
                                socialButton(Icons.facebook_rounded, () {}),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 28),

                      // Sign Up Footer Link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Ktext.normal("New user? "),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {},
                            child: Ktext.link("Request Access"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget socialButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 48,
        width: 60,
        decoration: BoxDecoration(
          color: Kcolor.socialBg,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Kcolor.socialBorder,
            width: 1.2,
          ),
        ),
        child: Icon(
          icon,
          color: Kcolor.textPrimary,
          size: 26,
        ),
      ),
    );
  }
}