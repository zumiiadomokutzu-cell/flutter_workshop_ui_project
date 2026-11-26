import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/e02_page_ui.dart';

class E03PageUI extends StatefulWidget {
  const E03PageUI({super.key});

  @override
  State<E03PageUI> createState() => _E03PageUIState();
}

class _E03PageUIState extends State<E03PageUI> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ภาพส้ม
            SizedBox(
              width: double.infinity,
              height: 240,
              child: Image.asset(
                'assets/images/img_orange2.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // หัวข้อ Register และ Create your new account
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Create your new account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ช่องกรอก Name
                  _buildInputField(hintText: 'Name'),

                  const SizedBox(height: 12),

                  // ช่องกรอก E-mail
                  _buildInputField(
                    hintText: 'E-mail',
                    keyboardType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 12),

                  // ช่องกรอก Phone
                  _buildInputField(
                    hintText: 'Phone',
                    keyboardType: TextInputType.phone,
                  ),

                  const SizedBox(height: 12),

                  // ช่องกรอก Password
                  TextField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  // ข้อความ By signing up you agree to our Terms & Conditions
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'By signing up you agree to our ',
                      style: TextStyle(fontSize: 12, color: Colors.black87),
                      children: [
                        TextSpan(
                          text: 'Terms & Conditions\n',
                          style: TextStyle(
                            color: Color(0xFFE3993C),
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFFE3993C),
                          ),
                        ),
                        TextSpan(text: 'and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Color(0xFFE3993C),
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFFE3993C),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ปุ่ม Sign Up
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE3993C),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const E02PageUI(),
                          ),
                          // กลับหน้า Login โดยเหลือ E01 ไว้ข้างล่าง
                          (route) => route.isFirst,
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // เส้นคั่น OR
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: const Color(0xFFE3993C).withOpacity(0.5)),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: const Color(0xFFE3993C).withOpacity(0.5)),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // ไอคอน Social Login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialButton('assets/images/img_g.png'),
                      const SizedBox(width: 24),
                      _buildSocialButton('assets/images/img_f.png'),
                      const SizedBox(width: 24),
                      _buildSocialButton('assets/images/img_a.png'),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Already have an Account? Log In
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an Account? ",
                        style: TextStyle(fontSize: 13, color: Colors.black87),
                      ),
                      GestureDetector(
                        onTap: () {
                          // กลับไปหน้า Login (E02)
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const E02PageUI(),
                            ),
                            (route) => route.isFirst,
                          );
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFFE3993C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ตัวช่วยสร้างช่องกรอกข้อมูลข้อความ
  Widget _buildInputField({
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
      ),
    );
  }

  // ตัวช่วยสร้างปุ่มไอคอน Social
  Widget _buildSocialButton(String imagePath) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 6,
              spreadRadius: 1,
            ),
          ],
        ),
        padding: const EdgeInsets.all(8),
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.share, size: 20),
        ),
      ),
    );
  }
}