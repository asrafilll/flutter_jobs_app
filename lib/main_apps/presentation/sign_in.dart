import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';
import 'package:jobs_app/main_apps/models/user.dart';
import 'package:jobs_app/main_apps/providers/auth_provider.dart';
import 'package:provider/provider.dart';

import 'components/components.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final bool _isLoading = false;

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
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
              CustomTextFormField(
                controller: _emailController,
                formTitle: 'Email Address',
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: _passwordController,
                formTitle: 'Password',
              ),
              const SizedBox(height: 40),
              _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : PrimaryButton(
                      onPressed: () async {
                        if (_emailController.text.isEmpty ||
                            _passwordController.text.isEmpty) {
                          _showError('Mohon isi semua data terlebih dahulu');
                        } else {
                          setState(() {
                            _isLoading == true;
                          });
                          UserModel user = await authProvider.signIn(
                              _emailController.text, _passwordController.text);

                          // ignore: unnecessary_null_comparison
                          if (user == null) {
                            _showError('Mohon mencoba login kembali');
                          } else {
                            // ignore: use_build_context_synchronously
                            Navigator.pushNamed(context, '/home');
                          }
                        }
                      },
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
