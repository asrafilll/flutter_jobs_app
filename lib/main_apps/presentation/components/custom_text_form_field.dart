import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.formTitle,
  });

  final String formTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formTitle,
          style: const TextStyle(
            color: AppStyles.kGreyColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            isDense: true,
            fillColor: const Color(0XFFF1F0F5),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(
                color: Color(0XFF4141A4),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
