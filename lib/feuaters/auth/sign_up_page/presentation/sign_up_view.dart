import 'package:fake_api_store/core/widgets/custom_buttons.dart';
import 'package:fake_api_store/core/widgets/custom_sperator.dart';
import 'package:fake_api_store/core/widgets/custom_text_field.dart';
import 'package:fake_api_store/feuaters/auth/log_in_page/presentation/widgets/log_in_body.dart';
import 'package:fake_api_store/feuaters/home_page_view/presentation/home_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create an Account",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextField(obscure: false, hint: 'First Name'),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(obscure: false, hint: 'Last Name'),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(obscure: false, hint: 'Email Address'),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(obscure: true, hint: 'Password'),
            const SizedBox(
              height: 20,
            ),
            GenralCustomButton(
              buttonColor: Colors.black,
              buttonText: 'Sign Up',
              ontap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeView())),
            ),
            const SizedBox(
              height: 10,
            ),
            const Separator(),
            CustomButton(
              buttonText: "Continue with Google",
              icon: Icons.g_mobiledata,
              iconColor: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              buttonText: "Continue with Facebook",
              icon: Icons.facebook_rounded,
              iconColor: Colors.blue,
            ),
            const PrivacyAndPolicy()
          ],
        ),
      )),
    );
  }
}
