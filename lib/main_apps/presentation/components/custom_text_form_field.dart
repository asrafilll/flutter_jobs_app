import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.formTitle,
    this.onChanged,
    this.controller,
  });

  final String formTitle;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isValid = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.formTitle,
          style: const TextStyle(
            color: AppStyles.kGreyColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          onChanged: (value) {
            _isValid = EmailValidator.validate(value);
          },
          decoration: InputDecoration(
            isDense: true,
            fillColor: const Color(0XFFF1F0F5),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: _isValid
                  ? BorderSide.none
                  : const BorderSide(
                      color: Colors.red,
                    ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: _isValid
                  ? const BorderSide(
                      color: Color(0XFF4141A4),
                    )
                  : const BorderSide(
                      color: Colors.red,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
