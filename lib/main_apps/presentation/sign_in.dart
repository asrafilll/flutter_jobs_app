import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';

import 'components/components.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  color: AppStyles.kGreyColor,
                  fontSize: 16,
                ),
              ),
              const Text(
                'Build Your Career',
                style: TextStyle(
                  color: AppStyles.kBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'assets/work.png',
                  width: 300,
                ),
              ),
              const SizedBox(height: 40),
              const CustomTextFormField(
                formTitle: 'Email Address',
              ),
              const SizedBox(height: 20),
              const CustomTextFormField(
                formTitle: 'Password',
              ),
              const SizedBox(height: 40),
              PrimaryButton(
                onPressed: () {},
                title: 'Sign In',
              ),
              const SizedBox(height: 20),
              CustomTextButton(
                onPressed: () => Navigator.pushNamed(context, '/register'),
                title: 'Create New Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
