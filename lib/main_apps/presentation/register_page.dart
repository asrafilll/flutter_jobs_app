import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';
import 'package:jobs_app/main_apps/models/user.dart';
import 'package:jobs_app/main_apps/providers/auth_provider.dart';
import 'package:jobs_app/main_apps/providers/upload_photo_provider.dart';
import 'package:jobs_app/main_apps/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'components/components.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController goalController = TextEditingController();

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
      ),
    );
  }

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    var userProvider = Provider.of<UserProvider>(context);
    final uploadPhoto = Provider.of<UploadPhotoProvider>(context);
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
                'Sign Up',
                style: TextStyle(
                  color: AppStyles.kGreyColor,
                  fontSize: 16,
                ),
              ),
              const Text(
                'Build New Journey',
                style: TextStyle(
                  color: AppStyles.kBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  uploadPhoto.upload = true;
                },
                child: Center(
                    child: uploadPhoto.isUpload
                        ? Image.asset(
                            'assets/user_pic.png',
                            width: 125,
                          )
                        : Image.asset(
                            'assets/upload_pic.png',
                            width: 125,
                          )),
              ),
              const SizedBox(height: 40),
              CustomTextFormField(
                controller: nameController,
                formTitle: 'Full Name',
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                formTitle: 'Email Address',
                controller: emailController,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                formTitle: 'Password',
                controller: passwordController,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                formTitle: 'Your Goal',
                controller: goalController,
              ),
              const SizedBox(height: 40),
              _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : PrimaryButton(
                      onPressed: () async {
                        if (nameController.text.isEmpty ||
                            goalController.text.isEmpty ||
                            emailController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          _showError('Mohon Isi semua data');
                        } else {
                          UserModel user = await authProvider.register(
                            emailController.text,
                            passwordController.text,
                            nameController.text,
                            goalController.text,
                          );
                          setState(() {
                            _isLoading = true;
                          });

                          // ignore: unnecessary_null_comparison
                          if (user == null) {
                            _showError('Gagal Register');
                            setState(() {
                              _isLoading = false;
                            });
                          } else {
                            userProvider.user = user;
                            // ignore: use_build_context_synchronously
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/home', (route) => false);
                          }
                        }
                      },
                      title: 'Sign Up',
                    ),
              const SizedBox(height: 20),
              CustomTextButton(
                onPressed: () => Navigator.pushNamed(context, '/sign-in'),
                title: 'Back to Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
