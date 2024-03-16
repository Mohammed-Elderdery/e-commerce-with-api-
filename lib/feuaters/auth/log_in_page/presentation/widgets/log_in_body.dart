import 'package:fake_api_store/core/utils/conistant.dart';
import 'package:fake_api_store/core/widgets/custom_buttons.dart';
import 'package:fake_api_store/core/widgets/custom_sperator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../../sign_up_page/presentation/sign_up_view.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Log In",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.only(left: 15, top: 18),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(color: thirdColor),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'Log in for faster checkout and get updates on your order.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  CustomTextField(
                    obscure: false,
                    hint: 'Email Adress',
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  CustomTextField(
                    obscure: true,
                    hint: 'Password',
                    icon: Icons.remove_red_eye,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          )),
                    ],
                  ),
                  GenralCustomButton(
                      buttonColor: Colors.black, buttonText: 'Log in'),
                  const Separator(),
                  CustomButton(
                    icon: Icons.g_mobiledata_outlined,
                    buttonText: 'Continue with Google',
                    iconColor: Colors.red,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    buttonText: 'Continue with Facebook',
                    icon: Icons.facebook_outlined,
                    iconColor: Colors.blue,
                  ),
                  const PrivacyAndPolicy(),
                  const SizedBox(
                    height: 55,
                  ),
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.black),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => const SignUpView()),
                      ),
                    ),
                    child: const Text(
                      'Sign Up Now',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrivacyAndPolicy extends StatelessWidget {
  const PrivacyAndPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            Text('By creating account or signing in , you have   read  and'),
            Text.rich(TextSpan(children: [
              TextSpan(text: 'agreed to'),
              TextSpan(
                text: ' Privacy Policy',
                style: TextStyle(color: Colors.indigo),
              ),
              TextSpan(text: ' and '),
              TextSpan(
                text: ' Term of Service',
                style: TextStyle(color: Colors.indigo),
              ),
              TextSpan(text: '.')
            ]))
          ],
        ));
  }
}
