import 'package:flutter/material.dart';
import 'package:login_page/Login/widget/kcolor.dart';
import 'package:login_page/Login/widget/kstyle.dart';
import 'package:login_page/Login/widget/ktext.dart';
import 'package:login_page/Login/widget/ktextfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Kcolor.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: size.height - MediaQuery.of(context).padding.top,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  const SizedBox(height: 40),

                  /// LOGIN TITLE
                  Text(
                    Ktext.loginTitle,
                    style: Kstyle.loginHeading,
                  ),

                  const SizedBox(height: 10),

                  Text(
                    Ktext.welcome,
                    style: Kstyle.welcome,
                  ),

                  const SizedBox(height: 45),

                  /// LOGIN CARD
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Kcolor.card,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Kcolor.glow.withOpacity(.45),
                          blurRadius: 35,
                          spreadRadius: 6,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(.08),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          Ktext.loginSubtitle,
                          textAlign: TextAlign.center,
                          style: Kstyle.subtitle,
                        ),

                        const SizedBox(height: 30),

                        /// Email
                        Ktextfield.buildTextField(
                          controller: emailController,
                          hintText: Ktext.emailHint,
                          icon: Icons.email_outlined,
                        ),

                        const SizedBox(height: 20),

                        /// Password
                        Ktextfield.buildTextField(
                          controller: passwordController,
                          hintText: Ktext.passwordHint,
                          icon: Icons.lock_outline,
                          isPassword: true,
                        ),

                        const SizedBox(height: 15),

                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              Ktext.forgotPassword,
                              style: Kstyle.forgot,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        /// LOGIN BUTTON
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Kcolor.primary,
                                    Kcolor.accent,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text(
                                  Ktext.loginButton,
                                  style: Kstyle.button,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Ktext.dontHaveAccount,
                        style: Kstyle.bottom,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          Ktext.signUp,
                          style: Kstyle.signUp,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}