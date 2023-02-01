import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';
import 'package:jobs_app/main_apps/presentation/components/job_tile.dart';

class DetailCategoryPage extends StatelessWidget {
  const DetailCategoryPage({
    super.key,
    this.categoryImg,
    this.categoryTitle,
  });

  static List<Map<String, dynamic>> jobsData = [
    {
      'img': 'assets/google_icon.png',
      'title': 'Front-End Developer',
      'company': 'Google',
    },
    {
      'img': 'assets/ig_icon.png',
      'title': 'UI Designer',
      'company': 'Instagram',
    },
    {
      'img': 'assets/fb_icon.png',
      'title': 'Data Scientist',
      'company': 'Facebook',
    },
  ];

  final String? categoryImg;
  final String? categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 270,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(categoryImg ?? 'assets/bg_web.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 270,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0),
                          AppStyles.kPrimaryColor.withOpacity(0.6),
                        ],
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          bottom: 30,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categoryTitle ?? 'Web Developer',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                            const Text(
                              '12,309 available',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Big Companies',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => JobsTile(
                      img: jobsData[index]['img'],
                      title: jobsData[index]['title'],
                      company: jobsData[index]['company'],
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemCount: jobsData.length,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'New Startups',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => JobsTile(
                      img: jobsData[index]['img'],
                      title: jobsData[index]['title'],
                      company: jobsData[index]['company'],
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemCount: jobsData.length,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
