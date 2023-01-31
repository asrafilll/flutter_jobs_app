import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';
import 'package:jobs_app/main_apps/controller/upload_photo_provider.dart';
import 'package:provider/provider.dart';

import 'components/components.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              const CustomTextFormField(
                formTitle: 'Full Name',
              ),
              const SizedBox(height: 20),
              const CustomTextFormField(
                formTitle: 'Email Address',
              ),
              const SizedBox(height: 20),
              const CustomTextFormField(
                formTitle: 'Password',
              ),
              const SizedBox(height: 20),
              const CustomTextFormField(
                formTitle: 'Your Goal',
              ),
              const SizedBox(height: 40),
              PrimaryButton(
                onPressed: () {},
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
