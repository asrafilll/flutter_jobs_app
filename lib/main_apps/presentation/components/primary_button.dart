import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.width = double.infinity,
    this.height = 45,
    required this.title,
    required this.onPressed,
  });

  final double width;
  final double height;
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppStyles.kPrimaryColor,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
        ),
        onPressed: onPressed,
        child: Text(
          title,
        ),
      ),
    );
  }
}
