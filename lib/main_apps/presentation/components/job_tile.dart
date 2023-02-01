import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';

class JobsTile extends StatelessWidget {
  const JobsTile({
    super.key,
    required this.img,
    required this.title,
    required this.company,
  });

  final String img;
  final String title;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(img),
        const SizedBox(width: 28),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: AppStyles.kBlackColor,
                fontSize: 16,
              ),
            ),
            Text(
              company,
              style: const TextStyle(
                color: AppStyles.kGreyColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            const SizedBox(
              width: 230,
              child: Divider(
                color: Color(0XFFECEDF1),
                thickness: 2,
              ),
            ),
          ],
        )
      ],
    );
  }
}
