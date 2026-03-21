import 'package:flutter/material.dart';
import 'package:machinetaskalisoninfotech/presentation/login/widgets/header_image.dart';
import 'package:machinetaskalisoninfotech/presentation/login/widgets/login_button.dart';
import 'package:machinetaskalisoninfotech/presentation/login/widgets/login_form_fields.dart';
import 'package:machinetaskalisoninfotech/presentation/login/widgets/password_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F6),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderImagewidget(),
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF222222),
                    ),
                  ),
                  SizedBox(height: 24),
                  LoginFormFields(
                    title: 'Email Address',
                    onpressed: () {},
                    hinttext: 'Please enter a Email address',
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  PasswordTextfield(),
                  SizedBox(height: 14),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF333333),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  LoginButton(),
                  SizedBox(height: 15),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: RichText(
                        text: TextSpan(
                          text: 'Dont have an Account ? ',
                          style: TextStyle(
                            color: Color(0xff222222),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: Color(0xff222222),
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
