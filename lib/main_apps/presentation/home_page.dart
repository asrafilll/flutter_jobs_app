import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';
import 'package:jobs_app/main_apps/presentation/components/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static List<Map<String, dynamic>> categoryData = [
    {
      'img': 'assets/web_dev.png',
      'title': 'Website\nDeveloper',
    },
    {
      'img': 'assets/mobile_dev.png',
      'title': 'Mopbile\nDeveloper',
    },
    {
      'img': 'assets/app_designer.png',
      'title': 'App\nDesigner',
    },
    {
      'img': 'assets/content_writer.png',
      'title': 'Content\nWriter',
    },
    {
      'img': 'assets/video_grapher.png',
      'title': 'Video\nGrapher',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Howdy',
                        style: TextStyle(
                          color: AppStyles.kGreyColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Jason Powell',
                        style: TextStyle(
                          color: AppStyles.kBlackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/user_pic.png',
                    width: 65,
                  )
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Howdy',
                style: TextStyle(
                  color: AppStyles.kBlackColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CategoryCard(
                    img: categoryData[index]['img'],
                    title: categoryData[index]['title'],
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  itemCount: categoryData.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
